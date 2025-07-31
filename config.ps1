# ==============================================
# File di Configurazione per generate-pdf.ps1
# ==============================================
#
# In questo file puoi definire tutte le variabili
# che personalizzano il documento PDF generato.

$config = @{

    # --- INFORMAZIONI DI IDENTIFICAZIONE DEL DOCUMENTO ---

    # Nome del progetto, usato per identificare il documento
    # Di solito è il nome del progetto o dell'organizzazione
    # Esempio: "Sistema di gestione delle prenotazioni"
    project = "[Nome del progetto]"
    
    # Categoria del documento, usata nella tabella di identificazione
    # Di solito è una categoria generale.
    # Esempio: "Analisi Tecnica"
    # Questo valore DEVE essere aggiornato manualmente
    category = "[Categoria del documento]"

    # Codice identificativo del documento, usato nell'header
    # Di solito è un codice univoco o un numero di versione
    # Esempio: "TEC_001_v01_Analisi-Tecnica-SGP"
    # Questo valore DEVE essere aggiornato manualmente
    document_code = "[Codice identificativo documento]"

    # Data di validità del documento, usata nella tabella di identificazione
    # Di solito è la data in cui il documento diventa valido
    # Esempio: "01/01/2023"
    # Questo valore DEVE essere aggiornato manualmente
    validity_date = "[GG/MM/AAAA]"

    # Titolo principale del documento, usato sulla copertina e nell'header
    # Di solito nel formato <category> - <project>
    # Esempio: "Analisi Tecnica - Sistema di gestione delle prenotazioni"
    # Se non specificato, verrà calcolato automaticamente
    # in base ai valori di category e project.
    title = ""

    # Versione del documento, usata nell'header e nella tabella di versionamento
    # Di solito è un numero di versione come "1.0", "2.1", etc.
    # Esempio: "1.0"
    # Se non specificato, verrà impostata automaticamente
    # in base all'ultima versione disponibile nella tabella di versionamento.
    version = ""

    # Nome del file di output PDF o Nome Documento
    # Questo campo determina il nome del file PDF generato.
    # Se non specificato, verrà usato "documentation.pdf" (default dello script)
    # oppure verrà generato un nome basato sul codice documento.
    # Esempio: "Analisi_Tecnica_SGP.pdf"
    # NOTA: Specificare solo il nome del file, non il percorso completo
    filename = ""
    
    # Path del logo aziendale (usato in copertina e header)
    # Il path è relativo alla root del progetto
    # Si consiglia di non modificare questo campo se non necessario.
    logo_path = "media/logo.png"

    # --- TABELLA DELLE RESPONSABILITA' (COPERTINA) ---

    # Ogni riga della tabella è un oggetto con "Ruolo", "Nome", "Funzione"
    responsibilities = @(
        @{
            "Ruolo" = "[Elaborato da]"
            "Nome" = "[Nome e cognome]"
            "Funzione" = "[Ruolo della persona]"
        },
        @{
            "Ruolo" = "[Verificato da]"
            "Nome" = "[Nome e cognome]"
            "Funzione" = "[Ruolo della persona]"
        },
        @{
            "Ruolo" = "[Approvato da]"
            "Nome" = "[Nome e cognome]"
            "Funzione" = "[Ruolo della persona]"
        }
    )

    # --- TABELLA DI VERSIONAMENTO (SECONDA PAGINA) ---

    # Ogni riga è un oggetto con "Versione", "Data", "Motivo", "Modifiche"
    versioning = @(
        @{
            "Versione" = "[X.Y]"
            "Data" = "[GG/MM/AAAA]"
            "Motivo" = "[Motivo della modifica]"
            "Modifiche" = "[Descrizione delle modifiche]"
        },
        @{
            "Versione" = "[X.Y-1]"
            "Data" = "[GG/MM/AAAA]"
            "Motivo" = "[Motivo della modifica]"
            "Modifiche" = "[Descrizione delle modifiche]"
        }
    )
}

# --- LOGICA AGGIUNTIVA ---

# Se il titolo non è specificato, calcola automaticamente
if ([string]::IsNullOrEmpty($config.title)) {
    if (-not [string]::IsNullOrEmpty($config.category) -and -not [string]::IsNullOrEmpty($config.project)) {
        $config.title = "$($config.category) - $($config.project)"
    } elseif (-not [string]::IsNullOrEmpty($config.project)) {
        $config.title = $config.project
    } else {
        $config.title = "Documento senza titolo"
    }
}

# Imposta automaticamente la versione nell'header con l'ultima disponibile nel versionamento se non è già specificata
if ([string]::IsNullOrEmpty($config.version) -and $config.versioning.Count -gt 0) {
    $config.version = $config.versioning[0].Versione
}

# Imposta il nome del file se non specificato
if ([string]::IsNullOrEmpty($config.filename)) {
    if (-not [string]::IsNullOrEmpty($config.document_code)) {
        $config.filename = "$($config.document_code).pdf"
    } else {
        $config.filename = "Documento.pdf"
    }
}
