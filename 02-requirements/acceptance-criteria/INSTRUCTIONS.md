# Acceptance Criteria Instructions

Questa sezione contiene le istruzioni per la creazione e gestione dei criteri di accettazione del progetto.

## Struttura della Cartella

```
acceptance-criteria/
├── README.md                           # Template introduttivo per la sezione
├── INSTRUCTIONS.md                     # Questo file di istruzioni
├── functional-acceptance/              # Criteri per test funzionali
│   └── AC-F-XXX-template.md           # Template criteri funzionali
├── non-functional-acceptance/          # Criteri per test non-funzionali
│   └── AC-NF-XXX-template.md          # Template criteri non-funzionali
├── integration-acceptance/             # Criteri per test di integrazione
│   └── AC-I-XXX-template.md           # Template criteri integrazione
└── user-acceptance/                    # Criteri per User Acceptance Testing
    └── AC-UA-XXX-template.md          # Template criteri UAT
```

## Tipologie di Criteri di Accettazione

### Functional Acceptance Criteria (AC-F-XXX)

**Scopo**: Definire criteri per validare che le funzionalità implementate soddisfino i requisiti funzionali specifici.

**Quando utilizzare**:

- Test di singole funzionalità
- Validazione comportamenti business logic
- Verifica workflow applicativi
- Test input/output di sistema

**Esempio ID**: AC-F-001, AC-F-002, AC-F-LOGIN-001

### Non-Functional Acceptance Criteria (AC-NF-XXX)

**Scopo**: Definire criteri per validare attributi di qualità del sistema (performance, sicurezza, usabilità, etc.).

**Quando utilizzare**:

- Test di performance e carico
- Validazione requisiti di sicurezza
- Test di usabilità e accessibilità
- Verifica scalabilità e affidabilità

**Esempio ID**: AC-NF-001, AC-NF-PERF-001, AC-NF-SEC-001

### Integration Acceptance Criteria (AC-I-XXX)

**Scopo**: Definire criteri per validare l'integrazione tra sistemi, servizi o componenti.

**Quando utilizzare**:

- Test API e servizi web
- Integrazione con sistemi esterni
- Test database e data flow
- Validazione message queues e event processing

**Esempio ID**: AC-I-001, AC-I-API-001, AC-I-DB-001

### User Acceptance Criteria (AC-UA-XXX)

**Scopo**: Definire criteri per validare che il sistema soddisfi le aspettative e necessità degli utenti finali.

**Quando utilizzare**:

- User Acceptance Testing (UAT)
- Validazione user experience
- Test usabilità con utenti reali
- Verifica business value per end users

**Esempio ID**: AC-UA-001, AC-UA-LOGIN-001, AC-UA-DASHBOARD-001

## Convenzioni di Naming

### Schema ID Standard

```
AC-{TYPE}-{AREA}-{NUMBER}
```

**Dove**:

- `{TYPE}`: F (Functional) | NF (Non-Functional) | I (Integration) | UA (User Acceptance)
- `{AREA}`: [Opzionale] Area funzionale o modulo specifico
- `{NUMBER}`: Numero progressivo (001, 002, etc.)

### Esempi di Naming

```
AC-F-001              # Primo criterio funzionale generico
AC-F-LOGIN-001         # Primo criterio funzionale per area login
AC-F-PAYMENT-003       # Terzo criterio funzionale per pagamenti
AC-NF-PERF-001         # Primo criterio non-funzionale performance
AC-NF-SEC-002          # Secondo criterio non-funzionale security
AC-I-API-001           # Primo criterio integrazione API
AC-I-DATABASE-001      # Primo criterio integrazione database
AC-UA-ONBOARDING-001   # Primo criterio UAT per onboarding
AC-UA-MOBILE-001       # Primo criterio UAT per mobile experience
```

## Workflow di Utilizzo

### 1. Creazione di un Nuovo Criterio

- Identificare la tipologia appropriata (F/NF/I/UA)
- Copiare il template corrispondente
- Rinominare il file seguendo le convenzioni
- Compilare tutte le sezioni del template
- Collegare a requisiti e user stories esistenti

### 2. Review e Approvazione

- Business Analyst review per completezza
- Technical review per fattibilità
- Stakeholder approval per criteri business-critical
- QA review per testability

### 3. Implementazione e Test

- Development team implementa features
- QA team esegue test secondo criteri
- Business users validano acceptance criteria
- Sign-off formale e closure

## Collegamento con Altri Artefatti

### Tracciabilità Verso l'Alto

- **Business Objectives** (01-project-definition/objectives.md)
- **User Stories** (02-requirements/user-stories/)
- **Functional Requirements** (02-requirements/functional-requirements/)
- **Non-Functional Requirements** (02-requirements/non-functional-requirements/)

### Tracciabilità Verso il Basso

- **Test Cases** (Documenti di test dettagliati)
- **Test Scripts** (Script automatici di test)
- **Test Results** (Report risultati test)

### Collegamento Orizzontale

- **Use Case Diagrams** (03-behavioral-diagrams/use-case-diagrams/)
- **Sequence Diagrams** (03-behavioral-diagrams/sequence-diagrams/)
- **Class Diagrams** (04-structural-diagrams/class-diagrams/)

## Checklist per Criteri di Qualità

### Criteri di Accettazione Efficaci

- [ ] **Specific**: Criteri specifici e non ambigui
- [ ] **Measurable**: Metriche e soglie quantificabili
- [ ] **Achievable**: Realistici e implementabili
- [ ] **Relevant**: Collegati ai business objectives
- [ ] **Time-bound**: Con tempistiche chiare per test

### Completezza del Template

- [ ] Tutte le sezioni obbligatorie compilate
- [ ] Tracciabilità a requisiti stabilita
- [ ] Scenari di test definiti chiaramente
- [ ] Criteri di pass/fail espliciti
- [ ] Responsabilità e timeline assegnate

### Review Quality Gates

- [ ] **Business Review**: Value e completeness validati
- [ ] **Technical Review**: Feasibility e testability confermati
- [ ] **UX Review**: User experience considerations incluse
- [ ] **QA Review**: Test approach e automation strategy

## Metriche e KPI

### Metriche di Progetto

- **Coverage**: % requisiti con AC definiti
- **Completeness**: % AC con tutti campi compilati
- **Traceability**: % AC collegati a requisiti
- **Pass Rate**: % AC che passano i test al primo tentativo

### Metriche di Qualità

- **Defect Density**: Difetti trovati per AC
- **Cycle Time**: Tempo da creazione AC a sign-off
- **Rework Rate**: % AC che richiedono modifiche
- **Stakeholder Satisfaction**: Feedback su chiarezza AC

## Best Practices

### Durante la Creazione

- **Coinvolgere tutti gli stakeholder** nella definizione
- **Usare linguaggio business** comprensibile agli utenti
- **Essere specifici e misurabili** nei criteri
- **Includere scenari negativi** oltre a quelli positivi
- **Considerare edge cases** e condizioni limite

### Durante l'Implementazione

- **Mantenere tracciabilità** durante sviluppo
- **Aggiornare AC** se cambiano i requisiti
- **Validare frequentemente** con stakeholder
- **Documentare deviazioni** e rationale
- **Preparare evidenze** per sign-off

### Durante i Test

- **Seguire AC come script di test** ufficiali
- **Documentare tutti i risultati** accuratamente
- **Coinvolgere business users** nella validazione
- **Gestire issues** in modo sistematico
- **Ottenere sign-off formale** prima del rilascio

## Template Sections Reference

### Sezioni Comuni a Tutti i Template

- **Informazioni Generali**: Metadati e identificazione
- **Descrizione**: Context e background
- **Criteri di Accettazione**: Specifici per tipologia
- **Tracciabilità**: Collegamenti a altri documenti
- **Test Results**: Evidenze e outcomes
- **Sign-off**: Approvazioni formali

### Sezioni Specifiche per Tipologia

- **Functional**: Focus su behavior e business logic
- **Non-Functional**: Metriche quantitative e thresholds
- **Integration**: Protocols, data flow e system interactions
- **User Acceptance**: User experience e business value

## Esempi di Matrice di Copertura

### E-commerce
| Area Funzionale | Criteri Funzionali | Criteri Non-Funzionali | Criteri di Integrazione | Criteri Utente |
|----------------|-------------------|----------------------|----------------------|---------------|
| Catalogo Prodotti | [IDs] | [IDs] | [IDs] | [IDs] |
| Carrello | [IDs] | [IDs] | [IDs] | [IDs] |
| Checkout | [IDs] | [IDs] | [IDs] | [IDs] |
| Account Utente | [IDs] | [IDs] | [IDs] | [IDs] |

### Banking
| Area Funzionale | Criteri Funzionali | Criteri Non-Funzionali | Criteri di Integrazione | Criteri Utente |
|----------------|-------------------|----------------------|----------------------|---------------|
| Autenticazione | [IDs] | [IDs] | [IDs] | [IDs] |
| Transazioni | [IDs] | [IDs] | [IDs] | [IDs] |
| Gestione Conti | [IDs] | [IDs] | [IDs] | [IDs] |
| Reportistica | [IDs] | [IDs] | [IDs] | [IDs] |

### Healthcare
| Area Funzionale | Criteri Funzionali | Criteri Non-Funzionali | Criteri di Integrazione | Criteri Utente |
|----------------|-------------------|----------------------|----------------------|---------------|
| Cartelle Pazienti | [IDs] | [IDs] | [IDs] | [IDs] |
| Appuntamenti | [IDs] | [IDs] | [IDs] | [IDs] |
| Prescrizioni | [IDs] | [IDs] | [IDs] | [IDs] |
| Analisi Risultati | [IDs] | [IDs] | [IDs] | [IDs] |

## Contatti e Supporto

Per domande sui template di Acceptance Criteria:

- **Product Owner**: [Responsabile business requirements]
- **Business Analyst**: [Responsabile AC documentation]
- **QA Lead**: [Responsabile test strategy]
- **Project Manager**: [Coordinamento e timeline]
