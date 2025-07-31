# Istruzioni per i Criteri di Accettazione Funzionali

## Definizione

I **Criteri di Accettazione Funzionali** sono utilizzati per verificare che le funzionalità del sistema si comportino come specificato nei requisiti funzionali.

## Convenzioni di Naming

- **File**: `AC-F-XXX-[nome-criterio].md` (es. `AC-F-001-user-login.md`)

## Template

Utilizzare il file `AC-F-XXX-template.md` per documentare ogni criterio. Le sezioni principali da compilare sono:

- **Informazioni Generali**: ID, requisito collegato, priorità, status.
- **Descrizione**: Sommario e contesto del criterio.
- **Scenari di Test**: Scenari "Given/When/Then" per descrivere il comportamento atteso.
- **Criteri Dettagliati**: Checklist specifica di cosa deve essere verificato.
- **Tracciabilità**: Collegamenti a requisiti e user stories.

## Best Practices

- Scrivere criteri chiari, concisi e non ambigui.
- Focalizzarsi sul "cosa" il sistema deve fare, non sul "come".
- Includere scenari positivi, negativi e di errore.
- Assicurarsi che ogni criterio sia testabile.
