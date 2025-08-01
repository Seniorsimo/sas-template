# Istruzioni per l'Utilizzo del Template di Documentazione Software

Questo documento fornisce linee guida operative per l'agent che utilizzerà questo template repository per generare un'analisi tecnica completa.

## Workflow di Utilizzo dell'Agent

### Procedura Generale

1. **Iniziare dalla root**: Utilizzare le istruzioni in `.github/copilot-instructions.md` + questo file INSTRUCTIONS.md per compilare il README.md della root
2. **Procedere per sezioni**: Elaborare le cartelle in ordine numerico (01, 02, 03, 04, 05)
3. **Per ogni sezione**: 
   - Leggere il file INSTRUCTIONS.md della cartella per capire scope e struttura
   - Compilare il README.md della sezione (che funge da template/introduzione)  
   - Utilizzare i template forniti per generare eventuali documenti aggiuntivi
4. **Review finale**: Una volta completata ogni sezione, fare review per evitare ripetizioni tra le sezioni

### Regole Operative Fondamentali

- **README.md nelle cartelle**: Sono template/introduzioni per le sezioni che verranno concatenate nel documento finale
- **INSTRUCTIONS.md**: Contengono le istruzioni operative per l'agent - NON vanno incluse nel documento finale
- **Template files**: Usare sempre i template `*-template.md` o `template-*.puml` come base per creare nuovi documenti
- **Evitare ripetizioni**: Poiché i README.md verranno uniti nel documento finale, evitare contenuti duplicati tra sezioni

## Struttura del Template

### 01-project-definition/
Contiene 5 file template principali:
- `01-project-description.md`: Panoramica generale e contesto
- `02-objectives.md`: Obiettivi SMART (business, tecnici, qualità)
- `03-project-scope.md`: Scope, deliverable, vincoli, assunzioni
- `04-stakeholders.md`: Mapping stakeholder primari e secondari
- `05-risk-register.md`: Matrice dei rischi e piani di mitigazione

### 02-requirements/
Struttura gerarchica per requisiti:
- `01-user-stories/`: Epic e user stories con template
- `02-functional-requirements/`: Requisiti funzionali per categoria  
- `03-non-functional-requirements/`: Requisiti non funzionali
- `04-acceptance-criteria/`: Criteri di accettazione strutturati

### 03-behavioral-diagrams/
Diagrammi UML comportamentali:
- `01-use-case-diagrams/`: Template PlantUML per casi d'uso
- `02-activity-diagrams/`: Template per flussi di processo
- `03-sequence-diagrams/`: Template per interazioni tra componenti

### 04-structural-diagrams/
Diagrammi architetturali:
- `template-system-architecture.puml`: Template architettura generale
- `01-component-diagrams/`: Template per diagrammi dei componenti
- `02-class-diagrams/`: Template per diagrammi delle classi

### 05-database-design/
Design del database:
- `er-diagram/`: Template per diagrammi Entity-Relationship
- `data-dictionary.md`: Template per dizionario dei dati

## Standard e Convenzioni

### ID Univoci per Tracciabilità
- Epic: `EPIC-XXX`
- User Stories: `US-XXX`  
- Requisiti Funzionali: `REQ-F-XXX`
- Requisiti Non Funzionali: `REQ-NF-XXX`
- Diagrammi: `UC-XXX`, `ACT-XXX`, `SEQ-XXX`

### Formattazione Markdown
- Linee vuote dopo titoli
- Solo elenchi puntati (-, non numerati)
- Spaziatura prima/dopo elenchi
- Nessuna emoji (stile enterprise)

### Diagrammi
- **PlantUML obbligatorio** per diagrammi UML formali
- **Mermaid** solo per sketch rapidi
- Commenti dettagliati in ogni diagramma
- Esempi multi-dominio (E-commerce, Banking, Healthcare)

## Configurazione PDF

Il file `config.ps1` nella root contiene configurazioni per generare il PDF finale. Prima della generazione, sostituire tutti i placeholder:
- `[Nome del progetto]`
- `[Categoria del documento]` 
- `[Codice identificativo documento]`
- `[GG/MM/AAAA]` per validity_date
- Tabelle responsabilità e versionamento

## Note per l'Agent

- Consultare sempre `.github/copilot-instructions.md` per linee guida dettagliate
- I README.md sono template da compilare, non documentazione dell'agent
- Mantenere coerenza stilistica tra tutte le sezioni
- Fare review finale per eliminare ridondanze prima della concatenazione
