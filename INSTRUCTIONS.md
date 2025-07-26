# Istruzioni per l'Agente

Questo workspace è un template per la documentazione di un progetto software. Il tuo compito è quello di utilizzare i template forniti per generare la documentazione richiesta.

## Come Utilizzare Questo Template

- **Clona** questo repository.
- **Personalizza** i file template in base al progetto specifico.
- **Sostituisci** i placeholder come `[Nome Progetto]`, `[Descrizione]`, ecc., con i dati reali.
- **Elimina** le sezioni non necessarie per il progetto.
- **Aggiungi** diagrammi e documentazione specifica dove richiesto.

## Struttura del Template

Il template è organizzato in folder numerati che rappresentano le diverse fasi del ciclo di vita della documentazione di un progetto. Ogni folder contiene dei file `.md` o `.puml` che fungono da template.

- **`01-project-definition/`**: Contiene i template per la definizione iniziale del progetto.
- **`02-requirements/`**: Contiene i template per la gestione dei requisiti.
- **`03-behavioral-diagrams/`**: Contiene i template per i diagrammi comportamentali UML.
- **`04-structural-diagrams/`**: Contiene i template per i diagrammi strutturali UML.
- **`05-database-design/`**: Contiene i template per la progettazione del database.

Ogni sotto-cartella contiene a sua volta dei template specifici e un file `README.md` con istruzioni più dettagliate.

## Workflow di Sviluppo

Segui il workflow numerato per la compilazione della documentazione:

1.  **Fase 1: Foundation (`01-project-definition/`)**
    - `Project Description` → `Stakeholder Analysis` → `SMART Objectives` → `Scope Definition` → `Risk Assessment`
2.  **Fase 2: Requirements (`02-requirements/`)**
    - `Epic Stories` → `Functional Requirements` (per categoria) → `Non-Functional Requirements` → `Acceptance Criteria` (strutturati)
3.  **Fase 3: Behavioral Design (`03-behavioral-diagrams/`)**
    - `Use Case Modeling` → `Business Process Flows` → `System Interaction Sequences`
4.  **Fase 4: Structural Design (`04-structural-diagrams/`)**
    - `System Architecture` → `OOP Class Design` → `Component Architecture & Deployment`
5.  **Fase 5: Data Design (`05-database-design/`)**
    - `Conceptual ER Model` → `Logical Data Model` → `Data Dictionary & Business Rules`

## Strumenti Consigliati

Per lavorare con questo template, sono consigliate le seguenti estensioni di VS Code:

-   **PlantUML**: Per creare diagrammi UML da codice.
-   **Markdown All in One**: Per la gestione della documentazione in Markdown.
-   **Draw.io Integration**: Per la creazione di diagrammi visuali.
-   **Mermaid Preview**: Per la visualizzazione di diagrammi Mermaid.

## Note

-   Tutti i file sono template riutilizzabili con placeholder da personalizzare.
-   I diagrammi PlantUML includono esempi di sintassi e best practice.
-   Segui le convenzioni UML standard per mantenere la coerenza.
-   Utilizza gli ID univoci per la tracciabilità tra i documenti.
-   Leggi i file `INSTRUCTIONS.md` (o `README.md` se non ancora aggiornati) di ogni cartella per comprendere la struttura e le best practice.
-   Personalizza i template sostituendo i placeholder con i dati del tuo progetto.
-   Usa i pattern forniti negli esempi multi-dominio come riferimento.
-   Integra la documentazione con tool come Jira, Confluence, Azure DevOps, GitHub Issues.
-   Utilizza gli ID univoci per garantire la tracciabilità.
-   La struttura è ottimizzata per Git, quindi sentiti libero di usare branch per le diverse feature.
-   I template supportano processi di revisione e approvazione strutturati.
