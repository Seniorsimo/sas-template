# ==============================================
# Script per Generazione PDF Documentazione
# ==============================================
# 
# Questo script converte tutta la documentazione 
# del template in un unico PDF professionale
#
# Prerequisiti:
# - Pandoc (https://pandoc.org/installing.html)
# - MiKTeX o TeX Live per LaTeX (opzionale per styling avanzato)

param(
    [string]$OutputPath = ".\documentation.pdf",
    [string]$Title = "Enterprise Software Documentation Template",
    [switch]$WithDiagrams,
    [switch]$Verbose
)

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

# Ordine dei file da includere nel PDF
$fileOrder = @(
    "README.md",
    "01-project-definition\README.md",
    "01-project-definition\project-description.md",
    "01-project-definition\stakeholders.md", 
    "01-project-definition\objectives.md",
    "01-project-definition\project-scope.md",
    "01-project-definition\risk-register.md",
    "02-requirements\README.md",
    "02-requirements\user-stories\README.md",
    "02-requirements\functional-requirements\README.md",
    "02-requirements\non-functional-requirements\README.md", 
    "02-requirements\acceptance-criteria\README.md",
    "03-behavioral-diagrams\README.md",
    "03-behavioral-diagrams\use-case-diagrams\README.md",
    "03-behavioral-diagrams\activity-diagrams\README.md",
    "03-behavioral-diagrams\sequence-diagrams\README.md",
    "04-structural-diagrams\README.md", 
    "04-structural-diagrams\class-diagrams\README.md",
    "04-structural-diagrams\component-diagrams\README.md",
    "05-database-design\README.md",
    "05-database-design\er-diagram\README.md",
    "05-database-design\data-dictionary.md"
)

# Crea file temporaneo combinato
$tempFile = Join-Path $PWD "temp-combined.md"
$combinedContent = @()

# Header del documento (senza YAML per evitare conflitti)
$combinedContent += "# $Title`n"
$combinedContent += "**Enterprise Template System**`n"
$combinedContent += "Generato il $(Get-Date -Format 'dd/MM/yyyy')`n`n"
$combinedContent += "\\newpage`n`n"

Write-Host "Combinazione file Markdown..." -ForegroundColor Cyan

foreach ($file in $fileOrder) {
    $fullPath = Join-Path $PWD $file
    
    if (Test-Path $fullPath) {
        Write-Host "  Aggiunto: $file" -ForegroundColor Green
        
        # Aggiungi intestazione di sezione
        $sectionName = (Split-Path $file -Leaf) -replace "\.md$", ""
        if ($file -eq "README.md") {
            $sectionName = "Overview del Template"
        }
        
        $combinedContent += "`n\newpage`n"
        $combinedContent += "# $sectionName`n"
        
        # Leggi contenuto file
        $content = Get-Content $fullPath -Raw -Encoding UTF8
        
        # Rimuovi TUTTI i blocchi YAML e linee markdown decorative
        $content = $content -replace "^---[\s\S]*?---\n?", ""
        $content = $content -replace "\n---\n", "`n"
        $content = $content -replace "\n---\s*\*.*?\*\n", "`n"
        
        # Aggiungi contenuto
        $combinedContent += $content
        $combinedContent += "`n"
        
    } else {
        Write-Host "  File non trovato: $file" -ForegroundColor Yellow
    }
}

# Scrivi file temporaneo
$combinedContent -join "`n" | Out-File -FilePath $tempFile -Encoding UTF8 -NoNewline
Write-Host "File temporaneo creato: $tempFile" -ForegroundColor Green

# Verifica che il file esista
if (-not (Test-Path $tempFile)) {
    Write-Host "Errore: Il file temporaneo non è stato creato correttamente" -ForegroundColor Red
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
    "--number-sections",
    "--toc",
    "--toc-depth=3"
)

if ($WithDiagrams) {
    Write-Host "Inclusione diagrammi PlantUML..." -ForegroundColor Cyan
    $pandocArgs += "--filter", "pandoc-plantuml"
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
