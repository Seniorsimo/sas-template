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
# La pre-elaborazione parallela migliora le performance su progetti grandi
# Per specificare numero di worker: .\generate-pdf.ps1 -MaxWorkers 4

param(
    [string]$OutputPath = ".\documentation.pdf",
    [string]$Title = "Enterprise Software Documentation Template",
    [switch]$WithDiagrams,
    [switch]$Verbose,
    [switch]$ParallelDiagrams,
    [int]$MaxWorkers = 0
)

# Default values for switches
if (-not $PSBoundParameters.ContainsKey('WithDiagrams')) { $WithDiagrams = $true }
if (-not $PSBoundParameters.ContainsKey('ParallelDiagrams')) { $ParallelDiagrams = $true }

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

# Configurazione parallelizzazione
if ($MaxWorkers -eq 0) {
    $MaxWorkers = [Environment]::ProcessorCount
    if ($MaxWorkers -gt 8) { $MaxWorkers = 8 } # Limite massimo ragionevole
}

if ($ParallelDiagrams -and $WithDiagrams) {
    Write-Host "Elaborazione parallela abilitata con $MaxWorkers worker" -ForegroundColor Cyan
    $env:PLANTUML_MAX_WORKERS = $MaxWorkers.ToString()
} else {
    Write-Host "Elaborazione sequenziale" -ForegroundColor Cyan
}

# Funzione per pre-processare i diagrammi PlantUML se richiesto
function Invoke-ParallelPlantUMLPreprocessing {
    param(
        [string[]]$PumlFiles,
        [string]$PlantUMLCommand,
        [int]$Workers = 4
    )
    
    if (-not $PumlFiles -or $PumlFiles.Count -eq 0) {
        return
    }
    
    Write-Host "Pre-elaborazione parallela di $($PumlFiles.Count) diagrammi PlantUML..." -ForegroundColor Cyan
    
    # Crea directory cache se non esiste
    $cacheDir = Join-Path $PWD ".plantuml_cache"
    if (-not (Test-Path $cacheDir)) {
        New-Item -ItemType Directory -Path $cacheDir -Force | Out-Null
    }
    
    # Elabora i diagrammi in parallelo usando PowerShell Jobs
    $jobs = @()
    $batchSize = [Math]::Ceiling($PumlFiles.Count / $Workers)
    
    for ($i = 0; $i -lt $Workers; $i++) {
        $start = $i * $batchSize
        $end = [Math]::Min($start + $batchSize - 1, $PumlFiles.Count - 1)
        
        if ($start -le $end) {
            $fileBatch = $PumlFiles[$start..$end]
            
            $job = Start-Job -ScriptBlock {
                param($files, $plantumlCmd, $cacheDir, $workerId)
                
                $processed = 0
                $cached = 0
                $failed = 0
                
                foreach ($file in $files) {
                    try {
                        $content = Get-Content $file -Raw -Encoding UTF8
                        $hash = [System.Security.Cryptography.MD5]::Create().ComputeHash([System.Text.Encoding]::UTF8.GetBytes($content))
                        $hashString = [System.BitConverter]::ToString($hash) -replace '-'
                        
                        $cacheFile = Join-Path $cacheDir "$hashString.png"
                        
                        if (Test-Path $cacheFile) {
                            $cached++
                            continue
                        }
                        
                        # Genera PNG temporaneo
                        $tempPng = [System.IO.Path]::ChangeExtension($file, '.png')
                        
                        if ($plantumlCmd -like "*java*") {
                            $cmdArgs = $plantumlCmd.Split(' ') + @('-tpng', '-charset', 'UTF-8', '-quiet', $file)
                            & $cmdArgs[0] $cmdArgs[1..($cmdArgs.Length-1)]
                        } else {
                            & $plantumlCmd -tpng -charset UTF-8 -quiet $file
                        }
                        
                        if (Test-Path $tempPng) {
                            # Sposta nella cache
                            Move-Item $tempPng $cacheFile -Force
                            $processed++
                        } else {
                            $failed++
                        }
                        
                    } catch {
                        $failed++
                    }
                }
                
                return @{
                    WorkerId = $workerId
                    Processed = $processed
                    Cached = $cached
                    Failed = $failed
                }
            } -ArgumentList $fileBatch, $plantumlCommand, $cacheDir, ($i + 1)
            
            $jobs += $job
        }
    }
    
    # Attendi completamento e raccogli statistiche
    $totalProcessed = 0
    $totalCached = 0
    $totalFailed = 0
    
    foreach ($job in $jobs) {
        $result = Receive-Job -Job $job -Wait
        Remove-Job -Job $job
        
        $totalProcessed += $result.Processed
        $totalCached += $result.Cached
        $totalFailed += $result.Failed
        
        Write-Host "  Worker $($result.WorkerId): $($result.Processed) generati, $($result.Cached) cache, $($result.Failed) errori" -ForegroundColor Gray
    }
    
    Write-Host "Pre-elaborazione completata: $totalProcessed generati, $totalCached da cache, $totalFailed errori" -ForegroundColor Green
}

# Genera ordine dei file dinamicamente
Write-Host "Scansione struttura progetto..." -ForegroundColor Cyan

# Trova tutti i file .md escludendo i template e file temporanei
$allMarkdownFiles = Get-ChildItem -Path $PWD -Filter "*.md" -Recurse | 
    Where-Object { 
        $_.Name -notlike "*template*" -and 
        $_.FullName -notlike "*template*" -and
        $_.Name -ne "temp-combined.md" -and
        $_.FullName -notlike "*\.git\*" -and
        $_.FullName -notlike "*\.github\*" -and
        $_.FullName -notlike "*scripts\*"
    } |
    ForEach-Object { 
        $_.FullName.Replace("$PWD\", "").Replace("\", "\")
    }

# Trova tutti i file .puml escludendo i template
$allPumlFiles = Get-ChildItem -Path $PWD -Filter "*.puml" -Recurse | 
    Where-Object { 
        $_.Name -notlike "*template*" -and 
        $_.FullName -notlike "*template*" -and
        $_.FullName -notlike "*\.git\*" -and
        $_.FullName -notlike "*\.github\*" -and
        $_.FullName -notlike "*scripts\*"
    } |
    ForEach-Object { 
        $_.FullName.Replace("$PWD\", "").Replace("\", "\")
    }

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

# Pre-elaborazione parallela dei diagrammi PlantUML se abilitata
if ($ParallelDiagrams -and $WithDiagrams -and $plantumlAvailable) {
    $pumlFilesOnly = $allPumlFiles | ForEach-Object { Join-Path $PWD $_ }
    if ($pumlFilesOnly.Count -gt 0) {
        Invoke-ParallelPlantUMLPreprocessing -PumlFiles $pumlFilesOnly -PlantUMLCommand $plantumlCommand -Workers $MaxWorkers
    }
}

# Crea file temporaneo combinato
$tempFile = Join-Path $PWD "temp-combined.md"
$combinedContent = @()

# Header del documento (senza YAML per evitare conflitti)
$combinedContent += "# $Title`n"
$combinedContent += "**Enterprise Template System**`n"
$combinedContent += "Generato il $(Get-Date -Format 'dd/MM/yyyy')`n`n"
$combinedContent += "\\newpage`n`n"

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
            # Aggiungi separatori prima e dopo i blocchi plantuml per evitare problemi di layout
            $content = $content -replace '(```plantuml)', "`n`n---`n`n`$1"
            $content = $content -replace '(```)\s*(\n)(?![`])', "`$1`$2`n---`n`n"
            
            # Per TUTTI i file .md, non aggiungere titolo aggiuntivo, solo newpage
            $combinedContent += "`n\newpage`n"
            # Aggiungi direttamente il contenuto (con titoli indentati se necessario)
            $combinedContent += $content
            $combinedContent += "`n"
            
        } elseif ($fileExtension -eq ".puml") {
            # Gestione file PlantUML - mantieni sempre il titolo per i diagrammi
            $sectionName = (Split-Path $file -Leaf) -replace "\.puml$", ""
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
            
            # Gestione file PlantUML
            $content = Get-Content $fullPath -Raw -Encoding UTF8
            
            # Aggiungi descrizione del diagramma
            $relativePath = $file -replace "\\", "/"
            $combinedContent += "`n**Diagramma PlantUML:** ``$relativePath```n`n"
            
            # Aggiungi separatori e padding per evitare problemi di posizionamento
            $combinedContent += "---`n`n"
            
            # Aggiungi il contenuto PlantUML come blocco di codice con separatori
            $combinedContent += "``````plantuml`n"
            $combinedContent += $content
            $combinedContent += "`n```````n`n"
            
            # Aggiungi padding finale per separare dal contenuto successivo
            $combinedContent += "---`n`n"
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
    
    # Riscrive il file per assicurarsi che sia UTF-8 senza BOM
    [System.IO.File]::WriteAllText($tempFile, $testContent, [System.Text.UTF8Encoding]::new($false))
    Write-Host "Encoding UTF-8 verificato e normalizzato" -ForegroundColor Green
} catch {
    Write-Host "Errore nella verifica encoding: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# Parametri Pandoc con XeLaTeX
$pandocArgs = @(
    $tempFile,
    "-o", $OutputPath,
    "--from", "markdown-yaml_metadata_block",
    "--to", "pdf",
    "--pdf-engine=xelatex",
    "--highlight-style=tango",
    "--variable", "mainfont=Calibri",
    "--variable", "monofont=Consolas", 
    "--variable", "fontsize=11pt",
    "--variable", "geometry:margin=2cm",
    "--variable", "graphics=yes",
    "--variable", "fig-align=center",
    "--variable", "fig-pos=H",
    "--number-sections",
    "--toc",
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
                    Write-Host "Utilizzando file batch: $filter" -ForegroundColor Green
                    $pandocArgs += "--filter", $filter
                    $filterFound = $true
                    break
                }
            } else {
                # Test dei filtri standard
                $command = Get-Command ($filter -split ' ')[0] -ErrorAction SilentlyContinue
                if ($command) {
                    Write-Host "Utilizzando filtro: $filter" -ForegroundColor Green
                    $pandocArgs += "--filter", $filter
                    $filterFound = $true
                    break
                }
            }
        } catch {
            Write-Host "Filtro $filter non disponibile" -ForegroundColor Gray
            continue
        }
    }
    
    if (-not $filterFound) {
        Write-Host "Nessun filtro PlantUML trovato, continuando senza rendering diagrammi..." -ForegroundColor Yellow
        Write-Host "I blocchi plantuml verranno mostrati come codice nel PDF" -ForegroundColor Yellow
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

try {
    & pandoc @pandocArgs
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "PDF generato con successo!" -ForegroundColor Green
        Write-Host "Posizione: $(Resolve-Path $OutputPath)" -ForegroundColor Green
        
        # Statistiche di generazione
        if ($WithDiagrams -and $plantumlAvailable) {
            if ($ParallelDiagrams) {
                Write-Host "Diagrammi PlantUML inclusi nel PDF (elaborazione parallela con $MaxWorkers worker)" -ForegroundColor Green
            } else {
                Write-Host "Diagrammi PlantUML inclusi nel PDF (elaborazione sequenziale)" -ForegroundColor Green
            }
        } elseif ($WithDiagrams -and -not $plantumlAvailable) {
            Write-Host "ATTENZIONE: Diagrammi PlantUML non renderizzati (PlantUML non disponibile)" -ForegroundColor Yellow
        } else {
            Write-Host "Diagrammi PlantUML non inclusi (parametro -WithDiagrams non specificato)" -ForegroundColor Cyan
        }
        
        # Cleanup
        Remove-Item $tempFile -Force
        
        # Apri PDF se richiesto
        $openPdf = Read-Host "Aprire il PDF generato? (y/n)"
        if ($openPdf -eq "y" -or $openPdf -eq "Y") {
            Start-Process $OutputPath
        }
    } else {
        throw "Pandoc ha restituito codice di errore: $LASTEXITCODE"
    }
    
} catch {
    Write-Host "Errore durante la generazione PDF:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    
    Write-Host "File temporaneo mantenuto per debug: $tempFile" -ForegroundColor Yellow
    Write-Host "Controlla il contenuto del file per risolvere il problema." -ForegroundColor Yellow
    
    exit 1
}

Write-Host "Generazione PDF completata!" -ForegroundColor Green
