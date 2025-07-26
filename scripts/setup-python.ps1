# Setup Script per Ambiente Python
# 
# Questo script configura l'ambiente Python necessario per la generazione PDF

Write-Host "Setup Ambiente Python per Generazione PDF" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green

# Crea ambiente virtuale
if (-not (Test-Path ".venv")) {
    Write-Host "Creazione ambiente virtuale..." -ForegroundColor Cyan
    python -m venv .venv
}

# Attiva ambiente virtuale
Write-Host "Attivazione ambiente virtuale..." -ForegroundColor Cyan
& ".\.venv\Scripts\Activate.ps1"

# Aggiorna pip
Write-Host "Aggiornamento pip..." -ForegroundColor Cyan
.\.venv\Scripts\python.exe -m pip install --upgrade pip

# Installa pacchetti
Write-Host "Installazione pacchetti..." -ForegroundColor Cyan
.\.venv\Scripts\python.exe -m pip install -r requirements.txt

Write-Host "Setup completato!" -ForegroundColor Green
Write-Host "Per attivare l'ambiente: .\.venv\Scripts\Activate.ps1" -ForegroundColor Cyan
Write-Host "Per generare PDF: .\scripts\generate-pdf.ps1" -ForegroundColor Cyan
