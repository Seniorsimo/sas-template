# Istruzioni per l'Agente - Requisiti e User Stories

Questa sezione è dedicata alla gestione dei requisiti di progetto. Il tuo compito è di utilizzare i template e la struttura fornita per documentare in modo completo e tracciabile tutti i requisiti.

## Struttura Gerarchica

La cartella `02-requirements` è organizzata in modo gerarchico:

-   **`user-stories/`**: Qui vanno inserite le user stories, organizzate per "epic".
-   **`functional-requirements/`**: Qui vanno documentati i requisiti funzionali, suddivisi per categoria.
-   **`non-functional-requirements/`**: Qui vanno i requisiti non funzionali (qualità, performance, sicurezza, ecc.).
-   **`acceptance-criteria/`**: Qui vanno definiti i criteri di accettazione per i test.

## Sistema di Numerazione

Utilizza il seguente sistema di numerazione per garantire la tracciabilità:

-   **Epic**: `EPIC-XXX` (es. `EPIC-001`)
-   **User Stories**: `US-XXX`
-   **Requisiti Funzionali**:
    -   Core Features: `REQ-F-XXX`
    -   Integrazioni: `REQ-I-XXX`
    -   API: `REQ-API-XXX`
    -   UI: `REQ-UI-XXX`
-   **Requisiti Non Funzionali**:
    -   Performance: `REQ-NF-PERF-XXX`
    -   Sicurezza: `REQ-NF-SEC-XXX`
    -   Usabilità: `REQ-NF-USA-XXX`
-   **Criteri di Accettazione**:
    -   Funzionali: `AC-F-XXX`
    -   Non Funzionali: `AC-NF-XXX`
    -   Integrazione: `AC-I-XXX`
    -   User Acceptance: `AC-UA-XXX`

## Metodologia

-   **User Stories**: Scrivile seguendo il formato: "Come [tipo di utente], voglio [obiettivo], per [beneficio]".
-   **Requisiti SMART**: Assicurati che i requisiti siano Specifici, Misurabili, Raggiungibili, Rilevanti e Definiti nel Tempo.
-   **Prioritizzazione MoSCoW**: Usa la prioritizzazione MoSCoW (Must, Should, Could, Won't) per classificare i requisiti.

## Workflow

1.  **Pianificazione degli Epic**: Inizia identificando gli epic e suddividendoli in user stories.
2.  **Creazione delle User Story**: Scrivi le user stories, definisci i criteri di accettazione e stima lo sforzo.
3.  **Analisi dei Requisiti**: Deriva i requisiti funzionali e non funzionali dalle user stories.
4.  **Definizione dei Criteri di Accettazione**: Definisci criteri di accettazione testabili per ogni requisito.
5.  **Validazione**: Testa l'implementazione rispetto ai criteri di accettazione.

## Template Disponibili

Utilizza i seguenti template come base per la tua documentazione:

-   **Epic**: `user-stories/epic-template/README.md`
-   **User Story**: `user-stories/epic-template/US-XXX-template.md`
-   **Requisito Funzionale**: `functional-requirements/core-features/REQ-F-XXX-template.md`
-   **Requisito Non Funzionale**: `non-functional-requirements/REQ-NF-XXX-template.md`

## Best Practice

-   **Tracciabilità**: Mantieni sempre la tracciabilità tra obiettivi, user stories, requisiti e test.
-   **Standardizzazione**: Usa i template forniti per garantire la coerenza.
-   **Revisione**: Revisiona regolarmente i documenti con gli stakeholder.
-   **Documenta le decisioni**: Se prendi una decisione importante, documentala.
-   **Non essere vago**: Sii il più specifico possibile nelle descrizioni.
-   **Gestione delle modifiche**: Segui un processo formale per la gestione delle richieste di modifica.

## Definition of Ready/Done

Assicurati di rispettare i criteri di "Definition of Ready" e "Definition of Done" per ogni artefatto (epic, user story, requisito).
I criteri sono definiti nel file `02-requirements/README.md` originale, che puoi consultare se necessario.
