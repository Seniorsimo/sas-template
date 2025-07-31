# Istruzioni per i Diagrammi ER

## Scopo

I **Diagrammi Entity-Relationship (ER)** sono utilizzati per modellare la struttura dei dati del sistema, mostrando le entità, i loro attributi e le relazioni tra di esse.

## Come Utilizzare il Template

1.  **Copia il Template**: Fai una copia del file `template-er-diagram.puml` e rinominalo in modo descrittivo (es. `ER-DominioClienti.puml`).
2.  **Definisci le Entità**: Utilizza la sintassi `entity` per definire le entità del dominio.
3.  **Definisci gli Attributi**: Elenca gli attributi di ogni entità, specificando il tipo e se sono chiavi primarie (`<<PK>>`) o esterne (`<<FK>>`).
4.  **Crea le Relazioni**: Utilizza le frecce per mostrare le relazioni tra le entità, specificando la cardinalità.

## Convenzioni di Naming

- **File**: `ER-[NomeDominio].puml`
- **Entità**: `PascalCase`, singolare.
- **Attributi**: `camelCase`.

## Best Practices

- Mantenere i diagrammi focalizzati su un singolo dominio o sottosistema.
- Utilizzare i commenti per chiarire vincoli o regole di business non rappresentabili graficamente.
- Assicurarsi che il diagramma ER sia coerente con il dizionario dei dati.
