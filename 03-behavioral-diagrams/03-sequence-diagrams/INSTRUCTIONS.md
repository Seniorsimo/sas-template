# Istruzioni per i Diagrammi di Sequenza

## Scopo

I **Diagrammi di Sequenza** servono a modellare le interazioni tra i componenti del sistema, mostrando l'ordine temporale dei messaggi scambiati.

## Come Utilizzare il Template

1.  **Copia il Template**: Fai una copia del file `template-sequence.puml` e rinominalo in modo descrittivo (es. `SD-LoginUtente.puml`).
2.  **Definisci i Partecipanti**: Aggiungi o modifica i partecipanti (attori, componenti, database) coinvolti nell'interazione.
3.  **Modella l'Interazione**: Descrivi la sequenza di messaggi scambiati tra i partecipanti, utilizzando `->` per i messaggi sincroni e `->>` per quelli asincroni.

## Convenzioni di Naming

- **File**: `SD-[NomeScenario].puml`
- **Partecipanti**: Utilizzare nomi chiari e abbreviazioni consistenti (es. `FE` per Frontend).

## Best Practices

- Focalizzare ogni diagramma su un singolo scenario o interazione.
- Utilizzare `activate` e `deactivate` per indicare il ciclo di vita di un'operazione.
- Aggiungere note per chiarire la logica o i dati scambiati.
