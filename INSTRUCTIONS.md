# Istruzioni per l'Utilizzo del Template di Documentazione Software

Questo documento fornisce linee guida e istruzioni per l'utilizzo efficace del template di documentazione software.

## Contesto del Progetto

- **Template enterprise** con struttura gerarchica scalabile per progetti di qualsiasi dimensione
- **Workflow strutturato**: definizione → requisiti → design comportamentale → design strutturale → database design
- **Standard professionali**: SMART objectives, MoSCoW prioritization, RACI matrices, tracciabilità completa
- **Multi-domain examples**: E-commerce, Banking, Healthcare, SaaS
- **Tool stack**: PlantUML, Mermaid, Markdown con integrazione VS Code

## Linee Guida Generali

### Comportamento Consigliato
- **Risposte concise**: Eseguire le operazioni richieste senza lunghe spiegazioni
- **Focus sull'azione**: Concentrarsi sull'esecuzione del task piuttosto che su descrizioni elaborate del processo

### Template e Struttura Enterprise
- **SEMPRE consultare il README** della cartella di destinazione prima di creare/modificare file
- **UTILIZZARE i template esistenti** come base per nuovi file - non creare mai file da zero se esiste un template
- **Seguire la struttura gerarchica** del progetto (01-05 cartelle con sottocategorie organizzate)
- **Mantenere coerenza** con gli standard enterprise già implementati

### Documentazione
- **Markdown professionale** per tutta la documentazione testuale con formattazione consistente e SENZA emoji
- **Stile enterprise** con sezioni strutturate, checklist, e tabelle quando appropriato
- **Esempi multi-dominio** - includere esempi pratici per E-commerce, Banking, Healthcare
- **Intestazioni gerarchiche** con numerazione senza emoji per identificazione rapida
- **Tracciabilità**: usare ID univoci e collegamenti tra documenti
- **DIVIETO EMOJI**: Non utilizzare mai emoji nei documenti di progetto (README, template, specifiche) per mantenere uno stile professionale e enterprise

### Formattazione Markdown Standard
- **Linee vuote**: sempre dopo titoli (# ## ###) e dopo linee orizzontali (---)
- **Elenchi**: utilizzare SOLO elenchi puntati (-), MAI elenchi numerati (1. 2. 3.)
- **Spaziatura elenchi**: lasciare sempre una riga bianca prima e dopo ogni elenco
- **Consistenza**: mantenere formattazione uniforme in tutti i file .md del progetto

### Diagrammi UML
- **PlantUML OBBLIGATORIO** per tutti i diagrammi UML formali (non usare altri formati)
- **Mermaid** solo per diagrammi semplici e quick sketches
- **Commenti dettagliati** in ogni diagramma per spiegare elementi e relazioni
- **Convenzioni UML standard** - rispettare stereotipi, cardinalità, e notazioni formali
- **Template-based**: usare sempre i template .puml esistenti come punto di partenza

### User Stories e Requisiti
- **Formato standard**: "Come [ruolo], voglio [funzionalità] per [beneficio]"
- **Struttura gerarchica**: Epic → User Stories → Tasks seguendo la struttura 02-requirements/
- **Criteri di accettazione SMART** con Given/When/Then per ogni story
- **Prioritizzazione MoSCoW** (Must/Should/Could/Won't) con business value
- **Collegamenti ai casi d'uso** e riferimenti ai diagrammi comportamentali

### Tracciabilità e Governance
- **ID univoci**: assegnare identificatori per requirement/story/componente (es. REQ-001, US-005)
- **Matrice di tracciabilità**: mantenere collegamenti tra requisiti → design → test
- **Decisioni documentate**: registrare rational delle scelte architetturali nei README
- **Review checklist**: usare le checklist presenti nei template per validazione
- **Version control**: seguire le convenzioni di naming per branch e commit

## Regole per Creazione/Modifica File

### REGOLA FONDAMENTALE
**PRIMA di creare o modificare qualsiasi file:**
1. **Leggere SEMPRE il README** della cartella di destinazione per comprendere scope e best practices
2. **Cercare template esistenti** nella cartella - se presente, DEVE essere utilizzato come base
3. **Non creare mai file da zero** quando esiste un template corrispondente
4. **Seguire le convenzioni** stabilite nei template esistenti per naming e struttura
5. **Dopo ogni modifica effettuata ad un file, eseguire una review del file stesso per verificarne la correttezza formale** (formattazione, struttura, coerenza con gli standard e i template)

### Workflow per Nuovi File
```
1. Identifica cartella destinazione (01-05)
2. Leggi README della cartella
3. Cerca template-*.md o template-*.puml
4. Copia template come base
5. Personalizza mantenendo struttura
6. Aggiorna README se necessario
7. ESEGUI REVIEW del file per verificare correttezza formale
8. AGGIORNA README della cartella se contiene indici o riferimenti al file modificato
9. AGGIORNA config.ps1 nella root se stai modificando informazioni di progetto rilevanti per la generazione del PDF
```

### Review Obbligatoria Post-Modifica
**DOPO OGNI modifica di qualsiasi file, SEMPRE eseguire una review completa che verifichi:**

- **Formattazione Markdown/PlantUML** corretta e consistente
- **Struttura del template** rispettata (sezioni, placeholder, formato)
- **Standard di formattazione Markdown** applicati (linee vuote dopo titoli, solo elenchi puntati, spaziatura elenchi)
- **Convenzioni di naming** seguite per file e ID univoci
- **Collegamenti interni** funzionanti (riferimenti tra documenti)
- **Standard enterprise** applicati (SMART, MoSCoW, RACI, tracciabilità)
- **Coerenza stilistica** con il resto del progetto
- **Completezza informazioni** richieste dal template
- **Sintassi PlantUML** valida (per diagrammi)
- **Esempi multi-dominio** inclusi dove appropriato
- **ID univoci** assegnati e tracciabilità mantenuta
- **Assenza di emoji** nei documenti professionali (mantenere stile enterprise)
- **README aggiornato** se presente nella cartella e contiene indici o riferimenti al file modificato

### Template Priority Matrix
- **01-project-definition/**: Usa sempre i 5 template base (description, stakeholders, objectives, scope, risks)
- **02-requirements/**: Segui struttura gerarchica con sottocartelle specifiche
- **03-behavioral-diagrams/**: PlantUML template obbligatori per use-case, activity, sequence
- **04-structural-diagrams/**: Template architetturali (system, class, component)
- **05-database-design/**: Solo diagrammi ER, MAI codice SQL

## Suggerimenti Specifici per Diagrammi
- **Sequence diagrams**: Focus sui messaggi asincroni/sincroni e lifelines con attivazioni
- **Class diagrams**: Includere attributi con visibilità, metodi, relazioni (association/composition/inheritance)
- **ER diagrams**: Specificare cardinalità (1:1, 1:N, N:M), vincoli di integrità e business rules
- **Use case diagrams**: Definire attori primari/secondari, include/extend relationships, system boundary
- **Activity diagrams**: Usare swimlanes per responsabilità, decision points, parallel flows
- **Component diagrams**: Mostrare interfaces, dependencies, deployment artifacts

## Quality Gates per Enterprise Templates
- **Completezza**: Ogni template deve avere tutti i placeholder compilati
- **Coerenza**: Stile e formato uniforme attraverso tutto il progetto  
- **Tracciabilità**: ID univoci e riferimenti incrociati mantenuti
- **Standard Compliance**: SMART objectives, MoSCoW prioritization, UML notation
- **Multi-domain Coverage**: Esempi per almeno 2-3 settori (E-commerce, Banking, Healthcare)

## Strumenti Consigliati

### Estensioni VS Code

- **PlantUML**: Per creare diagrammi UML con codice
- **Markdown All in One**: Per gestire la documentazione
- **Draw.io Integration**: Per diagrammi visuali
- **Mermaid Preview**: Per diagrammi Mermaid

### Formati Supportati

- **PlantUML** (.puml) - Diagrammi UML testuali
- **Mermaid** (.mmd) - Diagrammi con sintassi semplificata
- **Draw.io** (.drawio) - Diagrammi visuali
- **Markdown** (.md) - Documentazione

## Come Iniziare

- **Definisci il Progetto**: Completa tutti i template in `01-project-definition/` (description, stakeholders, objectives, scope, risks)
- **Raccogli i Requisiti Gerarchici**: Struttura le user stories e requisiti in `02-requirements/` usando la gerarchia per categoria
- **Crea i Diagrammi Comportamentali**: Modella use cases, activity e sequence in `03-behavioral-diagrams/`
- **Progetta l'Architettura**: Sviluppa system architecture, class e component diagrams in `04-structural-diagrams/`
- **Disegna il Modello Dati**: Completa con ER diagrams e data dictionary in `05-database-design/`

## Workflow di Sviluppo Template

### Fase 1: Foundation (01-project-definition/)

```
Project Description → Stakeholder Analysis → SMART Objectives → 
Scope Definition → Risk Assessment
```

### Fase 2: Requirements (02-requirements/)

```
Epic Stories → Functional Requirements (by category) → 
Non-Functional Requirements → Acceptance Criteria (structured)
```

### Fase 3: Behavioral Design (03-behavioral-diagrams/)

```
Use Case Modeling → Business Process Flows → 
System Interaction Sequences
```

### Fase 4: Structural Design (04-structural-diagrams/)

```
System Architecture → OOP Class Design → 
Component Architecture & Deployment
```

### Fase 5: Data Design (05-database-design/)

```
Conceptual ER Model → Logical Data Model → 
Data Dictionary & Business Rules
```

## Note Aggiuntive

- Tutti i file sono **template riutilizzabili** con placeholder da personalizzare
- I diagrammi PlantUML includono esempi di sintassi e best practices
- Seguire le convenzioni UML standard per mantenere consistenza
- Utilizzare gli ID univoci per la tracciabilità tra documenti

### File di Configurazione per Generazione PDF

Nella root del progetto è presente il file `config.ps1` che contiene tutte le configurazioni necessarie per la generazione del PDF della documentazione:

- **Informazioni generali**: Titolo del documento, path del logo aziendale
- **Tabella di identificazione**: Categoria, codice procedura, versione, ecc.
- **Tabella delle responsabilità**: Ruoli, nomi e funzioni delle persone coinvolte
- **Tabella di versionamento**: Storia delle versioni con date e descrizioni delle modifiche
- **Informazioni per l'header**: Dati che appaiono nell'intestazione di ogni pagina

Prima di generare la documentazione finale, è necessario personalizzare questo file sostituendo i placeholder con le informazioni specifiche del progetto.

## Utilizzo Template Enterprise

### Personalizzazione Avanzata

- **Multi-domain Examples**: Adapta gli esempi E-commerce/Banking/Healthcare al tuo settore  
- **Scaling**: Usa la struttura gerarchica per progetti di qualsiasi dimensione
- **Tool Integration**: Compatible con Jira, Confluence, Azure DevOps, GitHub Issues
- **Enterprise Standards**: Integra SMART objectives, MoSCoW prioritization, RACI matrices

### Governance e Tracciabilità

- **ID Univoci**: Ogni requisito/user story/componente ha identificatori per la tracciabilità
- **Matrice di Tracciabilità**: Collegamenti tra requisiti → design → implementazione
- **Version Control**: Struttura ottimizzata per Git con branching per feature
- **Review Process**: Template supportano review strutturati e approval workflow
