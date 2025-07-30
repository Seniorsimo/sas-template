# ==============================================
# File di Configurazione per generate-pdf.ps1
# ==============================================
#
# In questo file puoi definire tutte le variabili
# che personalizzano il documento PDF generato.

$config = @{
    # --- INFORMAZIONI GENERALI ---
    # Titolo principale del documento, usato sulla copertina e nell'header
    title = "[Titolo del documento]"

    # Path del logo aziendale (usato in copertina e header)
    # Il path è relativo alla root del progetto
    logo_path = "media/logo.png"

    # --- TABELLA DI IDENTIFICAZIONE (COPERTINA) ---
    identification = @{
        "Categoria" = "[Categoria del documento]"
        "Procedura" = "[Codice procedura]"
        "Data Validità" = "[GG/MM/AAAA]"
        "Versione" = "[X.Y]"
        "Nome Documento" = "[Nome completo del documento]"
    }

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

    # --- INFORMAZIONI PER L'HEADER ---
    # Questi dati appaiono su ogni pagina (tranne la copertina)
    header = @{
        "politica" = "[Titolo breve del documento]"
        "codicedocumento" = "[Codice identificativo documento]"
        # La versione nell'header viene presa dall'ultima versione nella tabella di versionamento
        "versione" = ""
    }
}

# --- LOGICA AGGIUNTIVA ---
# Imposta automaticamente la versione nell'header con l'ultima disponibile nel versionamento
if ($config.versioning.Count -gt 0) {
    $config.header.versione = $config.versioning[0].Versione
}
