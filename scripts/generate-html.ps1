# ==============================================
# Script Semplificato per PDF (Solo HTML)
# ==============================================
#
# Questo script converte la documentazione in HTML
# e può essere stampato in PDF dal browser
#
# Non richiede installazioni aggiuntive

param(
    [string]$OutputPath = ".\documentation.html",
    [string]$Title = "Enterprise Software Documentation Template"
)

Write-Host "Generazione HTML per conversione PDF" -ForegroundColor Green
Write-Host "=======================================" -ForegroundColor Green

# CSS per styling professionale
$css = @"
<style>
    body { 
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
        line-height: 1.6; 
        max-width: 1200px; 
        margin: 0 auto; 
        padding: 20px;
        color: #333;
    }
    h1, h2, h3, h4, h5, h6 { 
        color: #2c3e50; 
        margin-top: 30px;
        border-bottom: 2px solid #3498db;
        padding-bottom: 10px;
    }
    h1 { font-size: 2.5em; text-align: center; }
    h2 { font-size: 2em; margin-top: 40px; }
    h3 { font-size: 1.5em; color: #34495e; }
    code { 
        background-color: #f8f9fa; 
        padding: 2px 4px; 
        border-radius: 4px;
        font-family: 'Consolas', 'Monaco', monospace;
    }
    pre { 
        background-color: #f8f9fa; 
        padding: 15px; 
        border-radius: 5px; 
        overflow-x: auto;
        border-left: 4px solid #3498db;
    }
    blockquote { 
        border-left: 4px solid #3498db; 
        margin-left: 0; 
        padding-left: 20px; 
        font-style: italic;
        background-color: #f8f9fa;
        padding: 15px;
        border-radius: 0 5px 5px 0;
    }
    table { 
        border-collapse: collapse; 
        width: 100%; 
        margin: 20px 0;
    }
    th, td { 
        border: 1px solid #ddd; 
        padding: 12px; 
        text-align: left; 
    }
    th { 
        background-color: #3498db; 
        color: white; 
        font-weight: bold;
    }
    tr:nth-child(even) { background-color: #f2f2f2; }
    .page-break { page-break-before: always; }
    .toc { 
        background-color: #ecf0f1; 
        padding: 20px; 
        border-radius: 5px; 
        margin: 20px 0;
    }
    .toc ul { list-style-type: none; }
    .toc a { text-decoration: none; color: #2c3e50; }
    .toc a:hover { color: #3498db; }
    
    @media print {
        body { font-size: 11pt; }
        h1, h2, h3 { page-break-after: avoid; }
        pre, blockquote { page-break-inside: avoid; }
        .page-break { page-break-before: always; }
    }
</style>
"@

# Ordine dei file
$fileOrder = @(
    @{File="README.md"; Title="Template Overview"},
    @{File="01-project-definition\README.md"; Title="1. Project Definition"},
    @{File="01-project-definition\project-description.md"; Title="1.1 Project Description"},
    @{File="01-project-definition\stakeholders.md"; Title="1.2 Stakeholders"},
    @{File="01-project-definition\objectives.md"; Title="1.3 Objectives"},
    @{File="01-project-definition\project-scope.md"; Title="1.4 Project Scope"},
    @{File="01-project-definition\risk-register.md"; Title="1.5 Risk Register"},
    @{File="02-requirements\README.md"; Title="2. Requirements Management"},
    @{File="02-requirements\user-stories\README.md"; Title="2.1 User Stories"},
    @{File="02-requirements\functional-requirements\README.md"; Title="2.2 Functional Requirements"},
    @{File="02-requirements\non-functional-requirements\README.md"; Title="2.3 Non-Functional Requirements"},
    @{File="02-requirements\acceptance-criteria\README.md"; Title="2.4 Acceptance Criteria"},
    @{File="03-behavioral-diagrams\README.md"; Title="3. Behavioral Diagrams"},
    @{File="03-behavioral-diagrams\use-case-diagrams\README.md"; Title="3.1 Use Case Diagrams"},
    @{File="03-behavioral-diagrams\activity-diagrams\README.md"; Title="3.2 Activity Diagrams"},
    @{File="03-behavioral-diagrams\sequence-diagrams\README.md"; Title="3.3 Sequence Diagrams"},
    @{File="04-structural-diagrams\README.md"; Title="4. Structural Diagrams"},
    @{File="04-structural-diagrams\class-diagrams\README.md"; Title="4.1 Class Diagrams"},
    @{File="04-structural-diagrams\component-diagrams\README.md"; Title="4.2 Component Diagrams"},
    @{File="05-database-design\README.md"; Title="5. Database Design"},
    @{File="05-database-design\er-diagram\README.md"; Title="5.1 ER Diagrams"},
    @{File="05-database-design\data-dictionary.md"; Title="5.2 Data Dictionary"}
)

# Inizio HTML
$htmlContent = @"
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$Title</title>
    $css
</head>
<body>
    <h1>$Title</h1>
    <p style="text-align: center; color: #7f8c8d; font-style: italic;">
        Generato il $(Get-Date -Format "dd/MM/yyyy HH:mm") | 
        Enterprise Template System v2.0
    </p>
    
    <div class="page-break"></div>
    
    <div class="toc">
        <h2>📋 Indice dei Contenuti</h2>
        <ul>
"@

# Genera TOC
foreach ($item in $fileOrder) {
    $anchor = $item.Title -replace '\W', '_' -replace '_+', '_'
    $htmlContent += "            <li><a href=`"#$anchor`">$($item.Title)</a></li>`n"
}

$htmlContent += @"
        </ul>
    </div>
    
    <div class="page-break"></div>
"@

Write-Host "Processando file Markdown..." -ForegroundColor Cyan

foreach ($item in $fileOrder) {
    $fullPath = Join-Path $PWD $item.File
    
    if (Test-Path $fullPath) {
        Write-Host "  Aggiunto: $($item.File)" -ForegroundColor Green
        
        $anchor = $item.Title -replace '\W', '_' -replace '_+', '_'
        $htmlContent += "<div class='page-break'></div>`n"
        $htmlContent += "<h2 id='$anchor'>$($item.Title)</h2>`n"
        
        # Leggi e converti Markdown di base
        $content = Get-Content $fullPath -Raw -Encoding UTF8
        
        # Rimuovi YAML header
        $content = $content -replace "^---[\s\S]*?---\n", ""
        
        # Conversioni Markdown di base (escape HTML)
        $content = $content -replace "### (.*)", "<h4>`$1</h4>"
        $content = $content -replace "## (.*)", "<h3>`$1</h3>"  
        $content = $content -replace "# (.*)", "<h2>`$1</h2>"
        $content = $content -replace "\*\*(.*?)\*\*", "<strong>`$1</strong>"
        $content = $content -replace "\*(.*?)\*", "<em>`$1</em>"
        $content = $content -replace "``(.*?)``", "<code>`$1</code>"
        $content = $content -replace "^> (.*)", "<blockquote>`$1</blockquote>"
        $content = $content -replace "^\- (.*)", "<li>`$1</li>"
        $content = $content -replace "\n\n", "</p><p>"
        $content = "<p>" + $content + "</p>"
        $content = $content -replace "<p></p>", ""
        
        $htmlContent += $content + "`n`n"
        
    } else {
        Write-Host "  File non trovato: $($item.File)" -ForegroundColor Yellow
    }
}

$htmlContent += @"
    
    <div class="page-break"></div>
    <footer style="text-align: center; margin-top: 50px; padding: 20px; border-top: 1px solid #ddd;">
        <p><strong>$Title</strong></p>
        <p>Enterprise Template System | Generato il $(Get-Date -Format "dd/MM/yyyy HH:mm")</p>
    </footer>
</body>
</html>
"@

# Scrivi file HTML
$htmlContent | Out-File -FilePath $OutputPath -Encoding UTF8
Write-Host "File HTML generato: $OutputPath" -ForegroundColor Green

Write-Host "`nPer convertire in PDF:" -ForegroundColor Cyan
Write-Host "   1. Apri il file HTML nel browser" -ForegroundColor White
Write-Host "   2. Usa Ctrl+P per stampare" -ForegroundColor White  
Write-Host "   3. Seleziona 'Salva come PDF'" -ForegroundColor White
Write-Host "   4. Nelle opzioni di stampa:" -ForegroundColor White
Write-Host "      - Formato: A4" -ForegroundColor Gray
Write-Host "      - Margini: Minimi" -ForegroundColor Gray
Write-Host "      - Includi grafiche di sfondo" -ForegroundColor Gray

$openHtml = Read-Host "`nAprire il file HTML? (y/n)"
if ($openHtml -eq "y" -or $openHtml -eq "Y") {
    Start-Process $OutputPath
}
