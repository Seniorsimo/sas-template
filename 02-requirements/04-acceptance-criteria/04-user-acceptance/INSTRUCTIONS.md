# Istruzioni per i Criteri di Accettazione Utente

## Definizione

I **Criteri di Accettazione Utente (UAT)** sono utilizzati per validare che il software soddisfi le necessità di business e le aspettative degli stakeholder dal punto di vista dell'utente finale.

## Convenzioni di Naming

- **File**: `AC-UA-XXX-[nome-scenario].md` (es. `AC-UA-001-checkout-process.md`)

## Template

Utilizzare il file `AC-UA-XXX-template.md` per documentare ogni criterio. Le sezioni principali da compilare sono:

- **Informazioni Generali**: ID, user story collegata, priorità, status.
- **Descrizione User Acceptance**: Contesto della user story e definizione di successo.
- **Utenti Target**: Descrizione delle personas coinvolte nel test.
- **Scenari di Accettazione Utente**: Scenari "Given/When/Then" che descrivono il flusso utente.
- **Tracciabilità**: Collegamenti a requisiti e user stories.

## Best Practices

- Scrivere i criteri in un linguaggio comprensibile per gli utenti di business.
- Coinvolgere gli utenti finali nella definizione e nell'esecuzione dei test.
- Focalizzarsi sulla validazione del valore di business, non solo sulle funzionalità tecniche.
- Definire chiari criteri di "Go/No-Go" per il rilascio.
