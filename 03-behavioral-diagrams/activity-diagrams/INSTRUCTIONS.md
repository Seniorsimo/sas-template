# Istruzioni per i Diagrammi delle Attività

Questo documento contiene le linee guida per la creazione dei diagrammi delle attività (Activity Diagrams) utilizzando il template fornito.

## Scopo dei Diagrammi di Attività

I diagrammi delle attività servono a:
- Modellare processi business e workflow operativi.
- Documentare algoritmi e logica di controllo complessa.
- Illustrare flussi di lavoro attraverso diverse entità o sistemi.

## Come Utilizzare il Template

Per creare un nuovo diagramma di attività, segui questi passaggi:

1. **Copia il Template**: Fai una copia del file `template-activity.puml` e rinominalo in modo descrittivo (es. `AD-NomeProcesso.puml`).

2. **Modifica il Titolo**: Aggiorna il titolo del diagramma per riflettere il processo che stai modellando.

    ```plantuml
    title Processo di Gestione Ordini - Diagramma di Attività
    ```

3. **Definisci le Swimlanes**: Le swimlane (o corsie) rappresentano i diversi attori o sistemi coinvolti nel processo. Modifica i nomi e i colori delle swimlane nel template per adattarli al tuo scenario.

    ```plantuml
    |#LightBlue|Cliente|
    |#LightGreen|Sistema|
    |#LightYellow|Database|
    ```

4. **Modella il Flusso**: Descrivi il flusso delle attività passo dopo passo, assegnando ogni azione alla swimlane corretta.

    - **Inizio e Fine**: Ogni diagramma deve avere un punto di inizio (`start`) e uno o più punti di fine (`stop`).
    - **Attività**: Usa la sintassi `:Nome attività;` per definire un'azione.
    - **Decisioni**: Usa `if (condizione) then (sì) ... else (no) ... endif` per modellare i punti decisionali.

    Esempio di flusso:
    ```plantuml
    |Cliente|
    start
    :Invia una richiesta;

    |Sistema|
    :Valida la richiesta;
    if (La richiesta è valida?) then (sì)
      :Elabora la richiesta;
    else (no)
      :Mostra un messaggio di errore;
      stop
    endif
    ```

5. **Aggiungi Note (Opzionale)**: Se necessario, puoi aggiungere note per chiarire parti specifiche del diagramma.

    ```plantuml
    note right: Questo è un punto critico del processo.
    ```

## Convenzioni di Naming

- **File**: `AD-[NomeProcesso].puml` (es. `AD-ElaborazioneOrdine.puml`).
- **Titolo**: `Processo [Nome Processo] - Diagramma di Attività`.
- **Attività**: Usa verbi all'infinito per descrivere le azioni (es. `:Elaborare ordine;`).

---
*Usa questo template come punto di partenza per creare diagrammi di attività chiari, consistenti e facili da comprendere.*
