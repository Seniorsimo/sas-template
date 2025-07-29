# Istruzioni per i Diagrammi di Sequenza

Questo documento contiene le linee guida per la creazione dei diagrammi di sequenza (Sequence Diagrams) utilizzando il template fornito.

## Scopo dei Diagrammi di Sequenza

I diagrammi di sequenza servono a:
- Modellare interazioni tra oggetti e componenti del sistema.
- Rappresentare l'ordine temporale dei messaggi scambiati.
- Documentare protocolli di comunicazione e API.

## Come Utilizzare il Template

Per creare un nuovo diagramma di sequenza, segui questi passaggi:

1. **Copia il Template**: Fai una copia del file `template-sequence.puml` e rinominalo in modo descrittivo (es. `SD-NomeScenario.puml`).

2. **Modifica il Titolo**: Aggiorna il titolo del diagramma per riflettere lo scenario che stai modellando.

    ```plantuml
    title Interazione per il Login Utente - Diagramma di Sequenza
    ```

3. **Definisci i Partecipanti**: I partecipanti rappresentano i diversi attori, sistemi o componenti coinvolti nell'interazione. Modifica i partecipanti nel template per adattarli al tuo scenario.

    ```plantuml
    actor "Utente" as User
    participant "Frontend" as FE
    participant "Backend" as BE
    database "Database" as DB
    ```

4. **Modella l'Interazione**: Descrivi la sequenza di messaggi scambiati tra i partecipanti.

    - **Messaggi Sincroni**: Usa `->` per le chiamate bloccanti.
    - **Messaggi Asincroni**: Usa `->>` per le chiamate non bloccanti.
    - **Attivazione**: Usa `activate` e `deactivate` per indicare quando un partecipante è attivo.

    Esempio di interazione:
    ```plantuml
    User -> FE: Clicca su "Login"
    activate FE

    FE -> BE: POST /login
    activate BE

    BE -> DB: SELECT * FROM users
    activate DB
    DB --> BE: Dati utente
    deactivate DB

    BE --> FE: { token: "..." }
    deactivate BE

    FE --> User: Mostra dashboard
    deactivate FE
    ```

5. **Aggiungi Note (Opzionale)**: Se necessario, puoi aggiungere note per chiarire parti specifiche del diagramma.

    ```plantuml
    note right of BE: La logica di business è qui.
    ```

## Convenzioni di Naming

- **File**: `SD-[NomeScenario].puml` (es. `SD-AutenticazioneUtente.puml`).
- **Titolo**: `Interazione [Nome Scenario] - Diagramma di Sequenza`.
- **Partecipanti**: Usa nomi chiari e abbreviazioni consistenti (es. `FE` per Frontend).

---
*Usa questo template come punto di partenza per creare diagrammi di sequenza chiari e focalizzati su uno specifico scenario.*
