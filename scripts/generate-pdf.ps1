# ==============================================
# Script per Generazione PDF Documentazione
# ==============================================
# 
# Questo script converte tutta la documentazione 
# del template in un unico PDF professionale
#
# Prerequisiti:
# - Pandoc (https://pandoc.org/installing.html)
# - MiKTeX o TeX Live per LaTeX (per PDF generation)
# - PlantUML (per renderizzare i diagrammi):
#   * Installa PlantUML: https://plantuml.com/download
#   * Oppure pandoc-plantuml: pip install pandoc-plantuml
#
# I diagrammi PlantUML sono abilitati per default.
# Per disabilitarli: .\generate-pdf.ps1 -WithDiagrams:$false

param(
    [string]$OutputPath = ".\documentation.pdf",
    [switch]$WithDiagrams,
    [switch]$Verbose
)

# Default values for switches
if (-not $PSBoundParameters.ContainsKey('WithDiagrams')) { $WithDiagrams = $true }

# --- Caricamento Configurazione ---
$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$projectRoot = Split-Path -Parent -Path $PSScriptRoot
$configPath = Join-Path $projectRoot "config.ps1"
if (-not (Test-Path $configPath)) {
    Write-Host "ERRORE: File di configurazione 'config.ps1' non trovato nella root del progetto." -ForegroundColor Red
    exit 1
}
. $configPath
Write-Host "File di configurazione caricato con successo." -ForegroundColor Green


Write-Host "Generazione PDF Documentazione Template Enterprise" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green

# Controlla se Pandoc è installato
try {
    $pandocVersion = pandoc --version | Select-Object -First 1
    Write-Host "Pandoc trovato: $pandocVersion" -ForegroundColor Green
} catch {
    Write-Host "Pandoc non trovato!" -ForegroundColor Red
    Write-Host "Installa Pandoc da: https://pandoc.org/installing.html" -ForegroundColor Yellow
    Write-Host "Su Windows: winget install pandoc" -ForegroundColor Cyan
    exit 1
}

# Controlla se PlantUML è disponibile per diagrammi
$plantumlAvailable = $false
$plantumlCommand = ""

if ($WithDiagrams) {
    try {
        # Prova primo: plantuml nel PATH
        $plantumlVersion = plantuml -version 2>$null | Select-Object -First 1
        if ($plantumlVersion) {
            Write-Host "PlantUML trovato nel PATH: $plantumlVersion" -ForegroundColor Green
            $plantumlAvailable = $true
            $plantumlCommand = "plantuml"
        }
    } catch {
        # Prova secondo: java -jar plantuml.jar in posizioni standard
        $possiblePaths = @(
            "$env:USERPROFILE\tools\plantuml\plantuml.jar",
            ".\plantuml.jar",
            "$env:PROGRAMFILES\PlantUML\plantuml.jar"
        )
        
        foreach ($path in $possiblePaths) {
            if (Test-Path $path) {
                try {
                    $plantumlVersion = java -jar $path -version 2>$null | Select-Object -First 1
                    if ($plantumlVersion) {
                        Write-Host "PlantUML trovato: $plantumlVersion" -ForegroundColor Green
                        Write-Host "Utilizzando: java -jar $path" -ForegroundColor Cyan
                        $plantumlAvailable = $true
                        $plantumlCommand = "java -jar `"$path`""
                        break
                    }
                } catch {
                    continue
                }
            }
        }
        
        if (-not $plantumlAvailable) {
            Write-Host "ATTENZIONE: PlantUML non trovato. I diagrammi non verranno renderizzati." -ForegroundColor Yellow
            Write-Host "Per abilitare i diagrammi:" -ForegroundColor Cyan
            Write-Host "1. Installa PlantUML: https://plantuml.com/download" -ForegroundColor Cyan
            Write-Host "2. Oppure installa pandoc-plantuml: pip install pandoc-plantuml" -ForegroundColor Cyan
            Write-Host "3. PlantUML è già scaricato in: $env:USERPROFILE\tools\plantuml\plantuml.jar" -ForegroundColor Cyan
        }
    }
}

# Configurazione elaborazione diagrammi
Write-Host "Elaborazione diagrammi PlantUML standard" -ForegroundColor Cyan

# Genera ordine dei file dinamicamente
Write-Host "Scansione struttura progetto..." -ForegroundColor Cyan

# Trova tutti i file .md escludendo i template e file temporanei
$allMarkdownFiles = Get-ChildItem -Path $PWD -Filter "*.md" -Recurse | 
    Where-Object {
        $_.Name -ne "INSTRUCTIONS.md" -and
        $_.Name -notlike "*template*" -and 
        $_.Name -ne "temp-combined.md" -and
        $_.FullName -notlike "*\.git\*" -and
        $_.FullName -notlike "*\.github\*" -and
        $_.FullName -notlike "*scripts\*"
    } |
    ForEach-Object { Resolve-Path -Path $_.FullName -Relative }

# Trova tutti i file .puml escludendo i template
$allPumlFiles = Get-ChildItem -Path $PWD -Filter "*.puml" -Recurse | 
    Where-Object { 
        $_.Name -notlike "*template*" -and 
        $_.FullName -notlike "*\.git\*" -and
        $_.FullName -notlike "*\.github\*" -and
        $_.FullName -notlike "*scripts\*"
    } |
    ForEach-Object { Resolve-Path -Path $_.FullName -Relative }

# Combina tutti i file
$allFiles = $allMarkdownFiles + $allPumlFiles

# Funzione per ordinare i file con README sempre primo per cartella e .puml dopo i .md
function Get-SortedFiles {
    param([string[]]$files)
    
    # Raggruppa i file per cartella
    $grouped = $files | Group-Object { Split-Path $_ -Parent }
    
    $sortedFiles = @()
    
    foreach ($group in ($grouped | Sort-Object Name)) {
        # Separa file markdown e PlantUML
        $markdownFiles = $group.Group | Where-Object { $_ -like "*.md" } | Sort-Object
        $pumlFiles = $group.Group | Where-Object { $_ -like "*.puml" } | Sort-Object
        
        # Per i file markdown: README primo, poi gli altri
        $readme = $markdownFiles | Where-Object { (Split-Path $_ -Leaf) -eq "README.md" }
        $otherMarkdownFiles = $markdownFiles | Where-Object { (Split-Path $_ -Leaf) -ne "README.md" }
        
        # Aggiungi README per primo, poi gli altri markdown, poi i puml
        if ($readme) {
            $sortedFiles += $readme
        }
        $sortedFiles += $otherMarkdownFiles
        $sortedFiles += $pumlFiles
    }
    
    return $sortedFiles
}

$fileOrder = Get-SortedFiles -files $allFiles

Write-Host "File da includere nel PDF:" -ForegroundColor Cyan
foreach ($file in $fileOrder) {
    Write-Host "  $file" -ForegroundColor Gray
}

# --- Funzione per Popolare i Template ---
function Get-PopulatedContent {
    param(
        [string]$TemplatePath,
        [hashtable]$Config,
        [string]$Filename = ""
    )

    $templateContent = Get-Content $TemplatePath -Raw -Encoding UTF8

    # Popola il titolo
    $templateContent = $templateContent.Replace("{{TITLE}}", $Config.title)

    # Popola le variabili dell'header
    $templateContent = $templateContent.Replace("{{LOGO_PATH}}", $Config.logo_path.Replace("\", "/"))
    $templateContent = $templateContent.Replace("{{HEADER_POLITICA}}", $Config.header.politica)
    $templateContent = $templateContent.Replace("{{HEADER_CODICE}}", $Config.header.codicedocumento)
    $templateContent = $templateContent.Replace("{{HEADER_VERSIONE}}", $Config.header.versione)
    if (-not [string]::IsNullOrEmpty($Filename)) {
        $templateContent = $templateContent.Replace("{{FILENAME}}", $Filename)
    }

    # Genera righe per la tabella di identificazione nel formato:
    $idRows = @()
    $idRows += "\textcolor{azzurro}{Categoria} & \multicolumn{3}{l|}{\textcolor{azzurro}{$($Config.identification.Categoria)}} \\"
    $idRows += "\hline"
    $idRows += "\textcolor{azzurro}{Procedura} & \multicolumn{3}{l|}{\textcolor{azzurro}{$($Config.identification.Procedura)}} \\"
    $idRows += "\hline"
    $idRows += "\textcolor{azzurro}{Data Validita'} & \textcolor{azzurro}{$($Config.identification.DataValidita)} & \textcolor{azzurro}{Versione} & \textcolor{azzurro}{$($Config.identification.Versione)} \\"
    $idRows += "\hline"
    $idRows += "\textcolor{azzurro}{Nome Documento} & \multicolumn{3}{l|}{\textcolor{azzurro}{$($Config.identification.NomeDocumento)}} \\"
    $idRows += "\hline"
    $templateContent = $templateContent.Replace("{{IDENTIFICATION_TABLE_ROWS}}", ($idRows -join "`n"))

    # Genera righe per la tabella delle responsabilità in stile:
    # \textcolor{azzurro}{Approvato da} & \textcolor{azzurro}{Giovanni Verdi} & \textcolor{azzurro}{Chief Technology Officer (CTO)} \\
    # \hline
    $respRows = @()
    foreach ($item in $Config.responsibilities) {
        $respRows += "\textcolor{azzurro}{$($item.Ruolo)} & \textcolor{azzurro}{$($item.Nome)} & \textcolor{azzurro}{$($item.Funzione)} \\"
        $respRows += "\hline"
    }
    $templateContent = $templateContent.Replace("{{RESPONSIBILITIES_TABLE_ROWS}}", ($respRows -join "`n"))

    # Genera righe per la tabella di versionamento in stile:
    # \textcolor{azzurro}{1.0} & \textcolor{azzurro}{29/07/2025} & \textcolor{azzurro}{Prima emissione} & \textcolor{azzurro}{Creazione del documento} \\
    # \hline
    $verRows = @()
    foreach ($item in $Config.versioning) {
        $verRows += "\textcolor{azzurro}{$($item.Versione)} & \textcolor{azzurro}{$($item.Data)} & \textcolor{azzurro}{$($item.Motivo)} & \textcolor{azzurro}{$($item.Modifiche)} \\"
        $verRows += "\hline"
    }


    $templateContent = $templateContent.Replace("{{VERSIONING_TABLE_ROWS}}", ($verRows -join "`n"))

    return $templateContent
}


# --- Preparazione Contenuto Speciale (Copertina, Versionamento) ---
Write-Host "Preparazione copertina e pagine speciali..." -ForegroundColor Cyan
$coverContent = Get-PopulatedContent -TemplatePath (Join-Path $PSScriptRoot "cover-template.md") -Config $config
$versioningContent = Get-PopulatedContent -TemplatePath (Join-Path $PSScriptRoot "versioning-template.md") -Config $config

# --- Preparazione Header Dinamico ---
Write-Host "Preparazione header dinamico..." -ForegroundColor Cyan
$layoutContent = Get-PopulatedContent -TemplatePath (Join-Path $PSScriptRoot "layout.tex") -Config $config -Filename $(Split-Path $OutputPath -Leaf)
$baseHeaderContent = Get-Content (Join-Path $PSScriptRoot "header.tex") -Raw -Encoding UTF8
$tempHeaderFile = Join-Path $PSScriptRoot "temp-header.tex"
"$baseHeaderContent`n$layoutContent" | Out-File -FilePath $tempHeaderFile -Encoding UTF8 -NoNewline
Write-Host "File header temporaneo creato: $tempHeaderFile" -ForegroundColor Green

# Crea file temporaneo combinato
$tempFile = Join-Path $PWD "temp-combined.md"
$combinedContent = @()

# Aggiungi copertina e versionamento, con interruzioni di pagina esplicite
$combinedContent += $coverContent
$combinedContent += "\newpage"
$combinedContent += $versioningContent
$combinedContent += "\newpage"
$combinedContent += "\tableofcontents"
$combinedContent += "\newpage"


Write-Host "Combinazione file Markdown e PlantUML..." -ForegroundColor Cyan

foreach ($file in $fileOrder) {
    $fullPath = Join-Path $PWD $file
    $fileExtension = [System.IO.Path]::GetExtension($file)
    
    if (Test-Path $fullPath) {
        Write-Host "  Aggiunto: $file" -ForegroundColor Green
        
        if ($fileExtension -eq ".md") {
            # Gestione file Markdown
            $content = Get-Content $fullPath -Raw -Encoding UTF8
            
            # Rimuovi TUTTI i blocchi YAML e linee markdown decorative
            $content = $content -replace "^---[\s\S]*?---\n?", ""
            $content = $content -replace "\n---\n", "`n"
            $content = $content -replace "\n---\s*\*.*?\*\n", "`n"
            
            # Calcola la profondità della cartella per determinare l'indentazione dei titoli
            $folderPath = Split-Path $file -Parent
            $fileName = Split-Path $file -Leaf
            
            if ([string]::IsNullOrEmpty($folderPath) -or $folderPath -eq ".") {
                # File nella root, nessuna indentazione aggiuntiva
                $titleIndentation = 0
            } else {
                # Conta i livelli di cartella (split by \ o /)
                $folderLevels = ($folderPath -split '[\\\/]').Count
                $titleIndentation = $folderLevels
                
                # Eccezione per i file README: hanno -1 livello di indentazione
                if ($fileName -eq "README.md") {
                    $titleIndentation = [Math]::Max(0, $titleIndentation - 1)
                }
            }
            
            # Applica l'indentazione ai titoli se necessario
            if ($titleIndentation -gt 0) {
                $additionalHashes = "#" * $titleIndentation
                # Splitta il contenuto in righe per processare ogni riga separatamente
                $lines = $content -split "`n"
                $processedLines = @()
                
                foreach ($line in $lines) {
                    if ($line -match '^(#+)(\s+.*)$') {
                        # Riga che inizia con # seguiti da spazio e contenuto
                        $processedLines += "$additionalHashes$line"
                    } elseif ($line -match '^(#+)([^#\s].*)$') {
                        # Riga che inizia con # seguiti direttamente da contenuto (senza spazio)
                        $processedLines += "$additionalHashes$($matches[1]) $($matches[2])"
                    } else {
                        # Riga normale, non modificare
                        $processedLines += $line
                    }
                }
                
                $content = $processedLines -join "`n"
            }
            
            # Migliora il posizionamento dei diagrammi PlantUML embedded nei file MD
            # Usa una singola regex per estrarre e ricomporre con comandi LaTeX
            $content = $content -replace '(?s)```plantuml(.*?)```', "`n``````{=latex}`n\begin{center}`n```````n`n``````plantuml`$1```````n`n``````{=latex}`n\end{center}`n```````n"
            
            # Per TUTTI i file .md, non aggiungere titolo aggiuntivo, solo newpage
            $combinedContent += "`n\newpage`n"
            # Aggiungi direttamente il contenuto (con titoli indentati se necessario)
            $combinedContent += $content
            $combinedContent += "`n"
            
        } elseif ($fileExtension -eq ".puml") {
            # Gestione file PlantUML - estrai il titolo dal contenuto se esiste
            $content = Get-Content $fullPath -Raw -Encoding UTF8
            
            # Estrai titolo dal diagramma PlantUML se presente dopo @startuml
            $diagramTitle = ""
            if ($content -match '@startuml\s+(.+?)(\r?\n)') {
                $diagramTitle = $matches[1].Trim()
                # Rimuovi il titolo dal diagramma
                $content = $content -replace '@startuml\s+(.+?)(\r?\n)', '@startuml$2'
                Write-Host "    Titolo estratto dal diagramma: $diagramTitle" -ForegroundColor Cyan
            }
            
            # Usa il titolo estratto se disponibile, altrimenti usa il nome del file
            $sectionName = if ($diagramTitle) { $diagramTitle } else { (Split-Path $file -Leaf) -replace "\.puml$", "" }
            $sectionName = "$sectionName (Diagramma UML)"
            
            # Calcola l'indentazione anche per i titoli dei diagrammi PlantUML
            $folderPath = Split-Path $file -Parent
            if ([string]::IsNullOrEmpty($folderPath) -or $folderPath -eq ".") {
                $titleIndentation = 0
            } else {
                $folderLevels = ($folderPath -split '[\\\/]').Count
                $titleIndentation = $folderLevels
            }
            
            # Applica l'indentazione al titolo del diagramma
            $titlePrefix = "#" * ($titleIndentation + 1)  # +1 perché iniziamo sempre con un #
            
            $combinedContent += "`n\newpage`n"
            $combinedContent += "$titlePrefix $sectionName`n"
            
            # Validazione contenuto PlantUML
            try {
                if ($content -match '@startuml' -and $content -match '@enduml') {
                    Write-Host "    Sintassi PlantUML valida" -ForegroundColor Green
                } else {
                    Write-Host "    Possibile problema sintassi PlantUML (mancano @startuml/@enduml)" -ForegroundColor Yellow
                }
                
                # Controlla per sintassi problematiche comuni
                if ($content -match '[^\x00-\x7F]') {
                    Write-Host "    Caratteri non-ASCII rilevati nel diagramma" -ForegroundColor Yellow
                }
                
                if ($content -match '!include|!theme') {
                    Write-Host "    Include/theme esterni rilevati" -ForegroundColor Cyan
                }
                
            } catch {
                Write-Host "    Errore nella lettura del file PlantUML: $($_.Exception.Message)" -ForegroundColor Red
            }
            
            # Aggiungi il contenuto PlantUML con wrapping LaTeX per centratura
            $combinedContent += "``````{=latex}`n\begin{center}`n```````n`n``````plantuml"
            $combinedContent += $content
            $combinedContent += "```````n`n``````{=latex}`n\end{center}`n```````n`n"
            
        }
        
    } else {
        Write-Host "  File non trovato: $file" -ForegroundColor Yellow
    }
}

# Scrivi file temporaneo con encoding UTF-8 esplicito
$combinedContent -join "`n" | Out-File -FilePath $tempFile -Encoding UTF8 -NoNewline
Write-Host "File temporaneo creato: $tempFile" -ForegroundColor Green

# Verifica che il file esista e sia valido UTF-8
if (-not (Test-Path $tempFile)) {
    Write-Host "Errore: Il file temporaneo non è stato creato correttamente" -ForegroundColor Red
    exit 1
}

# Verifica encoding UTF-8 e risolvi eventuali problemi
try {
    $testContent = Get-Content $tempFile -Encoding UTF8 -Raw
    if ($testContent.Length -eq 0) {
        Write-Host "Errore: Il file temporaneo è vuoto" -ForegroundColor Red
        exit 1
    }
    
    # Analisi contenuto per statistiche pre-generazione
    $totalLines = ($testContent -split "`n").Count
    $diagramBlocks = ([regex]::Matches($testContent, '```plantuml')).Count
    $markdownFiles = ([regex]::Matches($testContent, '\\newpage')).Count
    
    Write-Host "`nStatistiche documento combinato:" -ForegroundColor Cyan
    Write-Host "- Righe totali: $totalLines" -ForegroundColor Gray
    Write-Host "- Sezioni (newpage): $markdownFiles" -ForegroundColor Gray
    Write-Host "- Blocchi diagrammi PlantUML: $diagramBlocks" -ForegroundColor Gray
    
    if ($diagramBlocks -gt 0 -and $WithDiagrams) {
        Write-Host "Diagrammi PlantUML pronti per il rendering" -ForegroundColor Green
    } elseif ($diagramBlocks -gt 0 -and -not $WithDiagrams) {
        Write-Host "Diagrammi trovati ma rendering disabilitato (-WithDiagrams:$false)" -ForegroundColor Yellow
    } elseif ($diagramBlocks -eq 0) {
        Write-Host "Nessun diagramma PlantUML trovato" -ForegroundColor Cyan
    }
    
    # Riscrive il file per assicurarsi che sia UTF-8 senza BOM
    [System.IO.File]::WriteAllText($tempFile, $testContent, [System.Text.UTF8Encoding]::new($false))
    Write-Host "Encoding UTF-8 verificato e normalizzato" -ForegroundColor Green
} catch {
    Write-Host "Errore nella verifica encoding: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}


# Genera file .tex intermedio per debug
$pandocArgsTex = @(
    $tempFile,
    "-s",
    "-o", "documentation-debug.tex",
    "--from", "markdown-yaml_metadata_block",
    "--to", "latex",
    "--pdf-engine=xelatex",
    "--include-in-header", $tempHeaderFile,
    "--highlight-style=tango",
    "--variable", "fontsize=11pt",
    "--variable", "geometry:margin=2cm",
    "--variable", "graphics=yes",
    "--variable", "fig-align=center",
    "--variable", "fig-pos=H",
    "--number-sections",
    # "--toc", # Il TOC è già stato inserito manualmente
    "--toc-depth=3"
)
Write-Host "Generazione file .tex intermedio per debug..." -ForegroundColor Cyan
& pandoc @pandocArgsTex
Write-Host "File .tex generato: documentation-debug.tex" -ForegroundColor Green

# Parametri Pandoc con XeLaTeX
$pandocArgs = @(
    $tempFile,
    "-o", $OutputPath,
    "--from", "markdown-yaml_metadata_block",
    "--to", "pdf",
    "--pdf-engine=xelatex",
    "--include-in-header", $tempHeaderFile,
    "--highlight-style=tango",
    "--variable", "fontsize=11pt",
    "--variable", "geometry:margin=2cm",
    "--variable", "graphics=yes",
    "--variable", "fig-align=center",
    "--variable", "fig-pos=H",
    "--number-sections",
    # "--toc", # Il TOC è già stato inserito manualmente
    "--toc-depth=3"
)

if ($WithDiagrams -and $plantumlAvailable) {
    Write-Host "Inclusione diagrammi PlantUML..." -ForegroundColor Cyan
    
    # Determina quale filtro utilizzare
    $filters = @(
        "D:\Repositories\test_uml\scripts\plantuml_filter_simple.bat",
        "pandoc-plantuml-filter", 
        "pandoc-plantuml"
    )
    Write-Host "Utilizzando filtro PlantUML ottimizzato..." -ForegroundColor Cyan
    
    $filterFound = $false
    
    foreach ($filter in $filters) {
        Write-Host "Testando filtro: $filter..." -ForegroundColor Gray
        try {
            if ($filter -like "*.bat") {
                # Test del file batch
                if (Test-Path $filter) {
                    Write-Host "File batch trovato: $filter" -ForegroundColor Green
                    $pandocArgs += "--filter", $filter
                    $filterFound = $true
                    break
                } else {
                    Write-Host "File batch non trovato: $filter" -ForegroundColor Red
                }
            } else {
                # Test dei filtri standard
                $command = Get-Command ($filter -split ' ')[0] -ErrorAction SilentlyContinue
                if ($command) {
                    Write-Host "Filtro trovato: $filter - Path: $($command.Source)" -ForegroundColor Green
                    $pandocArgs += "--filter", $filter
                    $filterFound = $true
                    break
                } else {
                    Write-Host "Filtro non trovato: $filter" -ForegroundColor Red
                }
            }
        } catch {
            Write-Host "Errore test filtro $filter`: $($_.Exception.Message)" -ForegroundColor Red
            continue
        }
    }
    
    if (-not $filterFound) {
        Write-Host "`nATTENZIONE: Nessun filtro PlantUML trovato!" -ForegroundColor Yellow
        Write-Host "I blocchi plantuml verranno mostrati come codice nel PDF" -ForegroundColor Yellow
        Write-Host "`nPer installare un filtro:" -ForegroundColor Cyan
        Write-Host "- pip install pandoc-plantuml-filter" -ForegroundColor Cyan
        Write-Host "- oppure pip install pandoc-plantuml" -ForegroundColor Cyan
        Write-Host "- assicurati che PlantUML sia installato e accessibile" -ForegroundColor Cyan
    } else {
        # Aggiungi parametri aggiuntivi per gestire encoding UTF-8
        $pandocArgs += "--metadata", "lang=it"
        Write-Host "Filtro PlantUML configurato con supporto UTF-8" -ForegroundColor Green
    }
} elseif ($WithDiagrams -and -not $plantumlAvailable) {
    Write-Host "Diagrammi richiesti ma PlantUML non disponibile. Continuando senza diagrammi..." -ForegroundColor Yellow
}

if ($Verbose) {
    $pandocArgs += "--verbose"
}

Write-Host "Generazione PDF in corso..." -ForegroundColor Cyan
Write-Host "Output: $OutputPath" -ForegroundColor Cyan

# Mostra il comando Pandoc completo se richiesto il verbose
if ($Verbose) {
    Write-Host "Comando Pandoc:" -ForegroundColor Gray
    Write-Host "pandoc $($pandocArgs -join ' ')" -ForegroundColor Gray
}

try {
    # Cattura stderr per errori più dettagliati
    $pandocOutput = & pandoc @pandocArgs 2>&1
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "PDF generato con successo!" -ForegroundColor Green
        Write-Host "Posizione: $(Resolve-Path $OutputPath)" -ForegroundColor Green
        
        # Mostra warning se ci sono stati problemi non fatali
        if ($pandocOutput) {
            $warnings = $pandocOutput | Where-Object { $_ -match "warning|attenzione" }
            if ($warnings) {
                Write-Host "`nWarning durante la generazione:" -ForegroundColor Yellow
                foreach ($warning in $warnings) {
                    Write-Host "  $warning" -ForegroundColor Yellow
                }
            }
        }
        
        # Statistiche di generazione
        if ($WithDiagrams -and $plantumlAvailable) {
            Write-Host "Diagrammi PlantUML inclusi nel PDF" -ForegroundColor Green
        } elseif ($WithDiagrams -and -not $plantumlAvailable) {
            Write-Host "ATTENZIONE: Diagrammi PlantUML non renderizzati (PlantUML non disponibile)" -ForegroundColor Yellow
        } else {
            Write-Host "Diagrammi PlantUML non inclusi (parametro -WithDiagrams non specificato)" -ForegroundColor Cyan
        }
        
        # Cleanup
        #Remove-Item $tempFile -Force
        #Remove-Item (Join-Path $PSScriptRoot "temp-cover.md") -Force
        #Remove-Item (Join-Path $PSScriptRoot "temp-versioning.md") -Force
        #Remove-Item $tempHeaderFile -Force
        
        # Apri PDF se richiesto
        $openPdf = Read-Host "Aprire il PDF generato? (y/n)"
        if ($openPdf -eq "y" -or $openPdf -eq "Y") {
            Start-Process $OutputPath
        }
    } else {
        # Gestione errori dettagliata
        Write-Host "Pandoc ha fallito con codice di errore: $LASTEXITCODE" -ForegroundColor Red
        
        if ($pandocOutput) {
            Write-Host "`nDettagli errore Pandoc:" -ForegroundColor Red
            foreach ($line in $pandocOutput) {
                if ($line -match "plantuml|diagram") {
                    Write-Host "  DIAGRAMMA: $line" -ForegroundColor Magenta
                } elseif ($line -match "error|failed|cannot") {
                    Write-Host "  ERRORE: $line" -ForegroundColor Red
                } elseif ($line -match "warning") {
                    Write-Host "  WARNING: $line" -ForegroundColor Yellow
                } else {
                    Write-Host "  $line" -ForegroundColor Gray
                }
            }
        }
        
        # Suggerimenti per la risoluzione
        Write-Host "`nSuggerimenti per la risoluzione:" -ForegroundColor Cyan
        Write-Host "1. Controlla la sintassi dei diagrammi PlantUML nel file temporaneo" -ForegroundColor Cyan
        Write-Host "2. Verifica che tutti i filtri Pandoc siano installati correttamente" -ForegroundColor Cyan
        Write-Host "3. Prova a eseguire con -Verbose per maggiori dettagli" -ForegroundColor Cyan
        Write-Host "4. Controlla i log di sistema per errori LaTeX" -ForegroundColor Cyan
        
        throw "Generazione PDF fallita"
    }
    
} catch {
    Write-Host "`nErrore durante la generazione PDF:" -ForegroundColor Red
    Write-Host "Messaggio: $($_.Exception.Message)" -ForegroundColor Red
    
    # Informazioni aggiuntive per il debug
    Write-Host "`nInformazioni debug:" -ForegroundColor Yellow
    Write-Host "- File temporaneo: $tempFile" -ForegroundColor Yellow
    Write-Host "- Directory lavoro: $PWD" -ForegroundColor Yellow
    Write-Host "- Output destinazione: $OutputPath" -ForegroundColor Yellow
    
    # Verifica stato del file temporaneo
    if (Test-Path $tempFile) {
        $tempSize = (Get-Item $tempFile).Length
        Write-Host "- File temporaneo: OK - $tempSize bytes" -ForegroundColor Yellow
    } else {
        Write-Host "- File temporaneo: MANCANTE!" -ForegroundColor Red
    }
    
    # Verifica presenza diagrammi nel file temporaneo
    if (Test-Path $tempFile) {
        $tempContent = Get-Content $tempFile -Raw -ErrorAction SilentlyContinue
        if ($tempContent -match '```plantuml') {
            $diagramCount = ([regex]::Matches($tempContent, '```plantuml')).Count
            Write-Host "- Diagrammi PlantUML trovati: $diagramCount" -ForegroundColor Yellow
        } else {
            Write-Host "- Nessun diagramma PlantUML trovato nel file combinato" -ForegroundColor Yellow
        }
    }
    
    Write-Host "`nPer il debug, controlla:" -ForegroundColor Cyan
    Write-Host "1. Contenuto del file: $tempFile" -ForegroundColor Cyan
    Write-Host "2. Installa/aggiorna: pandoc-plantuml-filter" -ForegroundColor Cyan
    Write-Host "3. Verifica installazione PlantUML e Java" -ForegroundColor Cyan
    
    exit 1
}

Write-Host "Generazione PDF completata!" -ForegroundColor Green
