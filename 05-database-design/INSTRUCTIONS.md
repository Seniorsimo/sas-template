# Istruzioni per il Database Design

## Scopo

Questa sezione documenta la struttura del database attraverso diagrammi visivi e un dizionario dei dati. Non deve contenere codice SQL o DDL.

## Struttura

- **`er-diagram/`**: Contiene i diagrammi Entity-Relationship (ER).
- **`data-dictionary.md`**: Contiene la definizione dettagliata di tutte le entità e i loro attributi.

## Convenzioni

### Diagrammi ER

- **Entità**: Nomi al singolare, `PascalCase`.
- **Attributi**: `camelCase`.
- **Relazioni**: Verbi descrittivi, con cardinalità specificata.

### Dizionario dei Dati

- **Tabelle**: Nomi al plurale, `snake_case`.
- **Campi**: `snake_case`.
- **Chiavi Primarie**: `[tabella_singolare]_id`.

## Best Practices

- Mantenere sincronizzati i diagrammi ER e il dizionario dei dati.
- Documentare tutti i vincoli di business e le regole di integrità.
- Associare le entità e gli attributi ai requisiti di sistema.