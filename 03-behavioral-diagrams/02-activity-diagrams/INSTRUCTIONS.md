# Istruzioni per i Diagrammi di Attività

## Scopo

I **Diagrammi di Attività** servono a modellare i processi di business e i flussi di lavoro, mostrando la sequenza delle attività e le decisioni prese.

## Come Utilizzare il Template

1.  **Copia il Template**: Fai una copia del file `template-activity.puml` e rinominalo in modo descrittivo (es. `AD-GestioneOrdine.puml`).
2.  **Definisci le Swimlanes**: Assegna una swimlane (corsia) a ogni attore o sistema coinvolto nel processo.
3.  **Modella il Flusso**: Descrivi le attività in sequenza, utilizzando i punti decisionali (`if/then/else`) per gestire i flussi alternativi.

## Convenzioni di Naming

- **File**: `AD-[NomeProcesso].puml`
- **Attività**: Utilizzare verbi all'infinito (es. `:Elaborare Ordine;`).

## Best Practices

- Mantenere i diagrammi focalizzati su un singolo processo.
- Utilizzare le swimlanes per chiarire le responsabilità.
- Etichettare chiaramente le decisioni e i flussi alternativi.
