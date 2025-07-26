# ==============================================
# Script per Gestione Cache PlantUML
# ==============================================
# 
# Utility per gestire la cache dei diagrammi PlantUML
# per ottimizzare le performance di generazione PDF

param(
    [ValidateSet("clean", "info", "rebuild")]
    [string]$Action = "info",
    [switch]$Force
)

$cacheDir = Join-Path $PWD ".plantuml_cache"

function Show-CacheInfo {
    Write-Host "Cache PlantUML - Informazioni" -ForegroundColor Green
    Write-Host "=============================" -ForegroundColor Green
    
    if (Test-Path $cacheDir) {
        $cacheFiles = Get-ChildItem $cacheDir -Filter "*.png"
        $totalSize = ($cacheFiles | Measure-Object -Property Length -Sum).Sum
        
        Write-Host "Posizione cache: $cacheDir" -ForegroundColor Cyan
        Write-Host "File in cache: $($cacheFiles.Count)" -ForegroundColor Cyan
        Write-Host "Dimensione totale: $([Math]::Round($totalSize / 1MB, 2)) MB" -ForegroundColor Cyan
        
        if ($cacheFiles.Count -gt 0) {
            Write-Host "`nFile più recenti:" -ForegroundColor Yellow
            $cacheFiles | Sort-Object LastWriteTime -Descending | Select-Object -First 5 | ForEach-Object {
                $size = [Math]::Round($_.Length / 1KB, 1)
                Write-Host "  $($_.Name) ($size KB) - $($_.LastWriteTime)" -ForegroundColor Gray
            }
        }
    } else {
        Write-Host "Cache non presente: $cacheDir" -ForegroundColor Yellow
    }
}

function Clear-Cache {
    Write-Host "Pulizia cache PlantUML..." -ForegroundColor Yellow
    
    if (Test-Path $cacheDir) {
        $cacheFiles = Get-ChildItem $cacheDir -Filter "*.png"
        
        if ($cacheFiles.Count -eq 0) {
            Write-Host "Cache già vuota" -ForegroundColor Green
            return
        }
        
        if (-not $Force) {
            $confirm = Read-Host "Eliminare $($cacheFiles.Count) file dalla cache? (y/n)"
            if ($confirm -ne "y" -and $confirm -ne "Y") {
                Write-Host "Operazione annullata" -ForegroundColor Yellow
                return
            }
        }
        
        Remove-Item $cacheDir -Recurse -Force
        Write-Host "Cache eliminata: $($cacheFiles.Count) file rimossi" -ForegroundColor Green
    } else {
        Write-Host "Cache non presente" -ForegroundColor Yellow
    }
}

function Invoke-CacheRebuild {
    Write-Host "Ricostruzione cache PlantUML..." -ForegroundColor Cyan
    
    # Prima pulisci la cache
    if (Test-Path $cacheDir) {
        Remove-Item $cacheDir -Recurse -Force
    }
    
    # Trova tutti i file .puml
    $pumlFiles = Get-ChildItem -Path $PWD -Filter "*.puml" -Recurse | 
        Where-Object { 
            $_.Name -notlike "*template*" -and 
            $_.FullName -notlike "*template*" -and
            $_.FullName -notlike "*\.git\*" -and
            $_.FullName -notlike "*\.github\*" -and
            $_.FullName -notlike "*scripts\*"
        }
    
    if ($pumlFiles.Count -eq 0) {
        Write-Host "Nessun file PlantUML trovato per ricostruire la cache" -ForegroundColor Yellow
        return
    }
    
    Write-Host "Trovati $($pumlFiles.Count) file PlantUML da processare" -ForegroundColor Cyan
    
    # Usa la funzione di pre-elaborazione parallela dal script principale
    $scriptPath = Join-Path $PSScriptRoot "generate-pdf.ps1"
    if (Test-Path $scriptPath) {
        # Simula la ricostruzione chiamando solo la pre-elaborazione
        $maxWorkers = [Environment]::ProcessorCount
        if ($maxWorkers -gt 8) { $maxWorkers = 8 }
        
        Write-Host "Utilizzando $maxWorkers worker per la ricostruzione parallela..." -ForegroundColor Cyan
        
        # Per ora, rigenera tutto utilizzando il metodo standard
        # In futuro si potrebbe estrarre la funzione di parallelizzazione
        Write-Host "Esegui il comando: .\generate-pdf.ps1 -WithDiagrams -ParallelDiagrams -MaxWorkers $maxWorkers" -ForegroundColor Yellow
        Write-Host "Questo ricostruirà automaticamente la cache durante la generazione del PDF" -ForegroundColor Yellow
    } else {
        Write-Host "Script generate-pdf.ps1 non trovato" -ForegroundColor Red
    }
}

# Esegui l'azione richiesta
switch ($Action) {
    "info" { Show-CacheInfo }
    "clean" { Clear-Cache }
    "rebuild" { Invoke-CacheRebuild }
}

Write-Host "`nUtilizzo dello script:" -ForegroundColor Gray
Write-Host "  .\manage-plantuml-cache.ps1 info     - Mostra informazioni cache" -ForegroundColor Gray
Write-Host "  .\manage-plantuml-cache.ps1 clean    - Pulisce la cache" -ForegroundColor Gray
Write-Host "  .\manage-plantuml-cache.ps1 rebuild  - Ricostruisce la cache" -ForegroundColor Gray
Write-Host "  -Force                                - Salta conferme" -ForegroundColor Gray
