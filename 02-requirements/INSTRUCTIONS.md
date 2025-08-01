# Istruzioni per la Gestione dei Requisiti

## Scopo della Cartella

La cartella `02-requirements` fornisce una struttura gerarchica per la gestione completa dei requisiti di progetto, organizzandoli in categorie ben definite per garantire tracciabilità e coerenza.

## Struttura Gerarchica Effettiva

### 01-user-stories/
Contiene le user stories organizzate per epic:
- `epic-template/`: Template per creare nuove epic con user stories correlate
- `[EPIC-XXX-nome-epic]/`: Cartelle specifiche per ogni epic (da creare usando il template)

### 02-functional-requirements/
Contiene i requisiti funzionali suddivisi per categoria:
- `01-core-features/`: Funzionalità fondamentali del sistema
- `02-api-requirements/`: Specifiche per API esposte dal sistema  
- `03-ui-requirements/`: Requisiti per interfaccia utente
- `04-integrations/`: Requisiti per integrazioni con sistemi esterni

### 03-non-functional-requirements/
Contiene i requisiti non funzionali organizzati per attributo qualitativo:
- `01-compatibility/`: Compatibilità browser, dispositivi, sistemi
- `02-performance/`: Tempo di risposta, throughput, latenza
- `03-scalability/`: Capacità di scalare carico e volume dati
- `04-reliability/`: Disponibilità, MTBF, MTTR
- `05-security/`: Autenticazione, autorizzazione, crittografia
- `06-usability/`: User experience, accessibilità, facilità d'uso

### 04-acceptance-criteria/
Contiene i criteri di accettazione strutturati per tipo:
- `01-functional-acceptance/`: Criteri per requisiti funzionali
- `02-non-functional-acceptance/`: Criteri per requisiti non funzionali  
- `03-integration-acceptance/`: Criteri per test di integrazione
- `04-user-acceptance/`: Criteri per User Acceptance Testing (UAT)

## Sistema di Numerazione Unificato

Per garantire la tracciabilità completa, utilizzare questo sistema di ID:

- **Epic**: `EPIC-XXX` (es. EPIC-001)
- **User Stories**: `US-XXX` (es. US-001)
- **Requisiti Funzionali**:
  - Core: `REQ-F-XXX` (es. REQ-F-001)
  - API: `REQ-API-XXX` (es. REQ-API-001)
  - UI: `REQ-UI-XXX` (es. REQ-UI-001)
  - Integrazione: `REQ-I-XXX` (es. REQ-I-001)
- **Requisiti Non Funzionali**: `REQ-NF-[CAT]-XXX` dove [CAT] = COMP|PERF|SCAL|REL|SEC|USA
- **Criteri di Accettazione**: `AC-F-XXX`, `AC-NF-XXX`, `AC-I-XXX`, `AC-UA-XXX`

## Workflow di Compilazione Template

### Fase 1: Epic e User Stories
1. Copiare `epic-template/` per creare nuove epic
2. Compilare README.md dell'epic con informazioni di alto livello
3. Utilizzare `US-XXX-template.md` per creare user stories specifiche
4. Aggiornare la lista user stories nel README.md dell'epic

### Fase 2: Requisiti Funzionali
1. Per ogni categoria (core, API, UI, integrations):
   - Usare il template `REQ-F-XXX-template.md` nella rispettiva sottocartella
   - Derivare requisiti dalle user stories create nella Fase 1
   - Mantenere tracciabilità con ID univoci

### Fase 3: Requisiti Non Funzionali  
1. Per ogni attributo qualitativo:
   - Usare `REQ-NF-XXX-template.md` per creare specifiche quantitative
   - Collegare agli obiettivi definiti in `01-project-definition/02-objectives.md`
   - Specificare metriche misurabili e criteri di accettazione

### Fase 4: Criteri di Accettazione
1. Consolidare criteri dalle fasi precedenti
2. Strutturare per tipo di testing (funzionale, non-funzionale, integrazione, UAT)
3. Utilizzare formato Given/When/Then per criteri specifici

## Best Practices per la Compilazione

### Tracciabilità Obbligatoria
- Ogni requisito deve referenziare le user stories di origine
- I requisiti non funzionali devono collegarsi agli obiettivi SMART della sezione 01
- Mantenere tracciabilità bidirezionale: requisiti ↔ user stories ↔ criteri accettazione

### Standardizzazione Template
- Utilizzare SEMPRE i template forniti nelle sottocartelle
- Non creare documenti senza utilizzare i template di base
- Mantenere struttura e formato dei placeholder per consistenza

### Prioritizzazione MoSCoW
- **Must Have**: Requisiti critici senza i quali il sistema non può funzionare
- **Should Have**: Requisiti importanti che aggiungono valore significativo  
- **Could Have**: Requisiti desiderabili che migliorano il sistema
- **Won't Have**: Requisiti esplicitamente esclusi da questa versione

### Gestione dei Cambiamenti
- Documentare modifiche ai requisiti con impact analysis
- Aggiornare tracciabilità quando si modificano requisiti
- Coinvolgere stakeholder per approvazione cambiamenti significativi

## Collegamenti con Altre Sezioni

### Input da Sezioni Precedenti
- **01-project-definition**: Obiettivi, scope, stakeholder, vincoli alimentano i requisiti
- User stories devono riflettere gli obiettivi business e gli stakeholder mappati

### Output per Sezioni Successive  
- **03-behavioral-diagrams**: Use case e sequence diagrams derivano dai requisiti funzionali
- **04-structural-diagrams**: Architettura e component design supportano requisiti non funzionali
- **05-database-design**: Modello dati emerge dai requisiti funzionali core

## Template Files Chiave

Ogni sottocartella contiene:
- `README.md`: Introduzione alla categoria specifica
- `INSTRUCTIONS.md`: Istruzioni dettagliate per quella categoria  
- Template specifici (`.md`) per creare nuovi documenti nella categoria

**Nota per l'Agent**: Prima di creare nuovi documenti, leggere sempre le INSTRUCTIONS.md delle singole sottocartelle per linee guida specifiche.
