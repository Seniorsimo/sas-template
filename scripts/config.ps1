# ==============================================
# File di Configurazione per generate-pdf.ps1
# ==============================================
#
# In questo file puoi definire tutte le variabili
# che personalizzano il documento PDF generato.

$config = @{
    # --- INFORMAZIONI GENERALI ---
    # Titolo principale del documento, usato sulla copertina e nell'header
    title = "Manuale Operativo Sicurezza Informatica"

    # Path del logo aziendale (usato in copertina e header)
    # Il path è relativo alla root del progetto
    logo_path = "media/background.png"

    # --- TABELLA DI IDENTIFICAZIONE (COPERTINA) ---
    identification = @{
        "Categoria" = "Policy Aziendale"
        "Procedura" = "PSO-001"
        "Data Validità" = "01/01/2025"
        "Versione" = "1.0"
        "Nome Documento" = "Manuale Operativo Sicurezza Informatica"
    }

    # --- TABELLA DELLE RESPONSABILITA' (COPERTINA) ---
    # Ogni riga della tabella è un oggetto con "Ruolo", "Nome", "Funzione"
    responsibilities = @(
        @{
            "Ruolo" = "Elaborato da"
            "Nome" = "Mario Rossi"
            "Funzione" = "IT Security Specialist"
        },
        @{
            "Ruolo" = "Verificato da"
            "Nome" = "Luigi Bianchi"
            "Funzione" = "IT Manager"
        },
        @{
            "Ruolo" = "Approvato da"
            "Nome" = "Giovanni Verdi"
            "Funzione" = "Chief Technology Officer (CTO)"
        }
    )

    # --- TABELLA DI VERSIONAMENTO (SECONDA PAGINA) ---
    # Ogni riga è un oggetto con "Versione", "Data", "Autore", "Modifiche"
    versioning = @(
        @{
            "Versione" = "1.0"
            "Data" = "29/07/2025"
            "Motivo" = "Prima emissione"
            "Modifiche" = "Creazione del documento"
        },
        @{
            "Versione" = "0.9"
            "Data" = "15/07/2025"
            "Motivo" = "Bozza interna"
            "Modifiche" = "Revisione iniziale"
        }
    )

    # --- INFORMAZIONI PER L'HEADER ---
    # Questi dati appaiono su ogni pagina (tranne la copertina)
    header = @{
        "politica" = "Manuale Operativo Sicurezza Informatica"
        "codice_documento" = "PSO-001-SICUREZZA"
        # La versione nell'header viene presa dall'ultima versione nella tabella di versionamento
        "versione" = ""
    }
}

# --- LOGICA AGGIUNTIVA ---
# Imposta automaticamente la versione nell'header con l'ultima disponibile nel versionamento
if ($config.versioning.Count -gt 0) {
    $config.header.versione = $config.versioning[0].Versione
}
