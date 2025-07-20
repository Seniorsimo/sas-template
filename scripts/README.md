# 📄 Script per Generazione PDF/HTML

Questa cartella contiene script per convertire l'intera documentazione del template enterprise in formati unificati per distribuzione e archivio.

## 🚀 Opzioni Disponibili

### 1. **Script HTML (Raccomandato)** ✅
**File**: `generate-html.ps1`  
**Requisiti**: Solo PowerShell (nativo Windows)  
**Output**: File HTML professionale convertibile in PDF

```powershell
# Esecuzione base
.\scripts\generate-html.ps1

# Con parametri personalizzati
.\scripts\generate-html.ps1 -OutputPath ".\MyProject-Documentation.html" -Title "My Project Documentation"
```

**Vantaggi**:
- ✅ Non richiede installazioni aggiuntive
- ✅ CSS professionale integrato
- ✅ Ottimizzato per stampa/PDF
- ✅ Funziona immediatamente

**Come convertire in PDF**:
1. Esegui lo script → genera file HTML
2. Apri HTML nel browser (Chrome/Edge)
3. Ctrl+P → "Salva come PDF"
4. Imposta: A4, margini minimi, includi grafiche

### 2. **Script Pandoc (Avanzato)** 🔧
**File**: `generate-pdf.ps1`  
**Requisiti**: Pandoc + LaTeX engine  
**Output**: PDF nativo di alta qualità

```powershell
# Installa Pandoc prima dell'uso
winget install pandoc

# Esecuzione base
.\scripts\generate-pdf.ps1

# Con diagrammi inclusi (richiede pandoc-plantuml)
.\scripts\generate-pdf.ps1 -WithDiagrams

# Con parametri personalizzati
.\scripts\generate-pdf.ps1 -OutputPath ".\enterprise-docs.pdf" -Title "Enterprise Documentation" -Verbose
```

**Vantaggi**:
- ✅ PDF nativo di qualità professionale
- ✅ Numerazione automatica sezioni
- ✅ Indice dei contenuti cliccabile
- ✅ Supporto LaTeX per formatting avanzato
- ✅ Possibilità di includere diagrammi PlantUML

## 🎯 Esecuzione Rapida (VS Code)

### Via Task Runner
1. **Ctrl+Shift+P** → "Tasks: Run Task"
2. Seleziona:
   - `Generate Documentation HTML` (più semplice)
   - `Generate Documentation PDF (Pandoc)` (richiede Pandoc)

### Via Terminal Integrato
```powershell
# Metodo HTML (sempre funziona)
.\scripts\generate-html.ps1

# Metodo Pandoc (se installato)
.\scripts\generate-pdf.ps1
```

## 📋 Struttura Output

### File Inclusi nel PDF/HTML
Il sistema elabora automaticamente tutti i file secondo questo ordine:

1. **Template Overview** (`README.md`)
2. **Project Definition** (cartella 01-)
   - Project Description
   - Stakeholders Analysis  
   - SMART Objectives
   - Project Scope
   - Risk Register
3. **Requirements Management** (cartella 02-)
   - User Stories
   - Functional Requirements
   - Non-Functional Requirements
   - Acceptance Criteria
4. **Behavioral Design** (cartella 03-)
   - Use Case Diagrams
   - Activity Diagrams
   - Sequence Diagrams
5. **Structural Design** (cartella 04-)
   - Class Diagrams
   - Component Diagrams
6. **Database Design** (cartella 05-)
   - ER Diagrams
   - Data Dictionary

## 🔧 Personalizzazione

### Modifica Ordine File
Edita l'array `$fileOrder` nei script per cambiare l'ordine o escludere sezioni.

### Styling HTML
Modifica la variabile `$css` in `generate-html.ps1` per personalizzare l'aspetto.

### Parametri Pandoc
Modifica l'array `$pandocArgs` in `generate-pdf.ps1` per opzioni avanzate LaTeX.

## 🚨 Troubleshooting

### "Pandoc non trovato"
```powershell
# Installa Pandoc
winget install pandoc

# Oppure scarica da: https://pandoc.org/installing.html
```

### "Execution Policy Error"
```powershell
# Abilita esecuzione script temporaneamente  
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

# Oppure esegui con parametro
powershell -ExecutionPolicy Bypass -File .\scripts\generate-html.ps1
```

### File mancanti
Lo script continua anche se alcuni file template non esistono, segnalando i file mancanti.

## 📈 Esempi Output

### HTML Output
- **Dimensione**: ~500KB per documentazione completa
- **Formato**: Responsive, ottimizzato per stampa
- **Compatibilità**: Tutti i browser moderni
- **PDF**: Stampa diretta → PDF di ~50-100 pagine

### Pandoc PDF Output  
- **Dimensione**: ~2-5MB per documentazione completa
- **Qualità**: Professionale con LaTeX rendering
- **Formato**: A4, margini ottimizzati
- **Lunghezza**: 50-150 pagine (dipende dal contenuto)

---
💡 **Suggerimento**: Inizia sempre con il metodo HTML per semplicità, passa a Pandoc solo se hai bisogno di qualità tipografica superiore.
