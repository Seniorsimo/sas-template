# AC-UA-XXX: [Titolo Criterio di Accettazione Utente]

## Informazioni Generali

**ID**: AC-UA-XXX  
**User Story**: [US-XXX] - [Titolo User Story collegata]  
**Epic**: [EP-XXX] - [Epic di riferimento]  
**Feature**: [Feature implementata]  
**User Role**: [Primary Persona] | [Secondary Personas]  
**Priorità**: Must Have | Should Have | Could Have | Won't Have  
**Status**: Draft | Review | Ready for UAT | In Testing | Passed | Failed | Closed  
**Assigned to**: [Business Analyst/Product Owner]

---

## Descrizione User Acceptance

### User Story Context

**As a** [tipo di utente]  
**I want** [funzionalità desiderata]  
**So that** [beneficio/valore per l'utente]

### Business Value

[Valore business che questa funzionalità porta]

### User Journey Context

[Dove si inserisce questa funzionalità nel journey utente complessivo]

### Success Definition

[Cosa significa "successo" dal punto di vista dell'utente finale]

---

## Utenti Target

### Primary User Persona

**Name**: [Nome Persona]  
**Role**: [Ruolo nell'organizzazione]  
**Experience Level**: [Novice | Intermediate | Expert]  
**Device Preference**: [Desktop | Mobile | Tablet | Multi-device]  
**Key Characteristics**: [Caratteristiche chiave rilevanti]  
**Pain Points**: [Problemi attuali che questa feature risolve]

### Secondary Users

- **[Persona 2]**: [Ruolo] - [Relevant characteristics]
- **[Persona 3]**: [Ruolo] - [Relevant characteristics]

### Stakeholders

- **[Stakeholder 1]**: [Interesse nella funzionalità]
- **[Stakeholder 2]**: [Interesse nella funzionalità]

---

## Scenari di Accettazione Utente

### Scenario 1: First-Time User Experience

**User Context**: Nuovo utente che usa la funzionalità per la prima volta

**Given** sono un nuovo utente del sistema  
**And** non ho mai utilizzato questa funzionalità prima  
**And** ho ricevuto le credenziali di accesso  
**When** accedo al sistema e navigo verso [funzionalità]  
**Then** dovrei vedere un'interfaccia intuitiva e comprensibile  
**And** dovrei riuscire a completare [task principale] senza formazione aggiuntiva  
**And** dovrei ricevere feedback appropriato per ogni azione  
**And** dovrei sentirmi confidante nell'utilizzare la funzionalità

**Acceptance Criteria**:

- [ ] UI è intuitiva per un nuovo utente
- [ ] Nessuna formazione richiesta per task base
- [ ] Tempo per completare primo task <= [X] minuti
- [ ] User satisfaction score >= [Y]/10

### Scenario 2: Daily Task Execution

**User Context**: Utente esperto che esegue task quotidiani

**Given** sono un utente esperto del sistema  
**And** utilizzo questa funzionalità quotidianamente  
**And** ho familiarità con il workflow  
**When** eseguo [task quotidiano tipico]  
**Then** dovrei completare il task in modo efficiente  
**And** il sistema dovrebbe supportare shortcuts e automazioni  
**And** dovrei ricevere solo le informazioni necessarie  
**And** il workflow dovrebbe essere fluido senza interruzioni

**Acceptance Criteria**:

- [ ] Task completato in <= [X] click/steps
- [ ] Tempo di esecuzione <= [Y] minuti
- [ ] Shortcuts disponibili e funzionanti
- [ ] Zero click/step non necessari
- [ ] Information density appropriata per utente esperto

### Scenario 3: Error Recovery

**User Context**: Utente che incontra un errore e deve recuperare

**Given** sto utilizzando la funzionalità normalmente  
**And** commetto un errore comune [tipo errore]  
**When** il sistema rileva l'errore  
**Then** dovrei ricevere un messaggio di errore chiaro e comprensibile  
**And** dovrei avere opzioni chiare per correggere l'errore  
**And** dovrei poter recuperare senza perdere il lavoro fatto  
**And** dovrei imparare come evitare l'errore in futuro

**Acceptance Criteria**:

- [ ] Error message chiaro in linguaggio utente
- [ ] Recovery options disponibili
- [ ] Zero perdita di dati/lavoro
- [ ] Guidance per prevenire errori futuri
- [ ] Recovery time <= [X] secondi

### Scenario 4: Mobile/Responsive Experience

**User Context**: Utente che accede da dispositivo mobile

**Given** sto utilizzando un dispositivo mobile/tablet  
**And** ho necessità di accedere alla funzionalità in mobilità  
**When** accedo alla funzionalità dal mio dispositivo  
**Then** l'interfaccia dovrebbe essere ottimizzata per il mio schermo  
**And** tutte le funzionalità core dovrebbero essere accessibili  
**And** l'interazione dovrebbe essere touch-friendly  
**And** le performance dovrebbero essere accettabili

**Acceptance Criteria**:

- [ ] UI responsive su tutti i device target
- [ ] Touch interactions funzionano correttamente
- [ ] Caricamento pagina <= [X] secondi su 3G
- [ ] Tutte le funzioni critiche accessibili
- [ ] Text leggibile senza zoom

### Scenario 5: Accessibility Compliance

**User Context**: Utente con disabilità che usa tecnologie assistive

**Given** sono un utente che utilizza [screen reader/keyboard navigation/etc.]  
**And** ho bisogno di accedere alla funzionalità  
**When** navigo nell'interfaccia con la mia tecnologia assistiva  
**Then** dovrei poter accedere a tutte le funzionalità principali  
**And** la navigazione dovrebbe essere logica e prevedibile  
**And** dovrei ricevere feedback appropriato per le mie azioni  
**And** dovrei poter completare task critici indipendentemente

**Acceptance Criteria**:

- [ ] WCAG [2.1 AA] compliance verificata
- [ ] Screen reader compatibility testata
- [ ] Keyboard navigation completa
- [ ] Color contrast standards rispettati
- [ ] Focus indicators chiari e visibili

---

## Criteri di Accettazione Dettagliati

### Usability Criteria

- [ ] **Task Success Rate**: >= [%] utenti completano task principali
- [ ] **Task Efficiency**: Task completati entro [tempo] per [% utenti]
- [ ] **Error Rate**: <= [%] errori per task per utente
- [ ] **Learnability**: Nuovi utenti produttivi entro [tempo]
- [ ] **Memorability**: Utenti occasionali ricordano come usare dopo [periodo]
- [ ] **Satisfaction**: User satisfaction score >= [valore]/10

### Functional Acceptance

- [ ] **Core Features**: Tutte le funzionalità core implementate
- [ ] **Business Rules**: Tutte le regole business applicate correttamente
- [ ] **Data Integrity**: Dati utente preservati e consistenti
- [ ] **Integration**: Integrazione con altri sistemi funzionante
- [ ] **Workflow**: Workflow utente completo e fluido

### User Experience Criteria

- [ ] **Visual Design**: Design allineato con brand guidelines
- [ ] **Information Architecture**: Informazioni organizzate logicamente
- [ ] **Navigation**: Navigazione intuitiva e consistente
- [ ] **Feedback**: Feedback appropriato per tutte le azioni utente
- [ ] **Progressive Disclosure**: Informazioni presentate progressivamente

### Performance from User Perspective

- [ ] **Page Load**: Pagine caricano entro [X] secondi
- [ ] **Response Time**: Azioni utente hanno risposta entro [Y] secondi
- [ ] **Perceived Performance**: Indicatori di progresso per operazioni lunghe
- [ ] **Offline Capability**: [Se applicabile] Funzionalità offline implementate

### Content and Communication

- [ ] **Copy/Text**: Testo chiaro, conciso e appropriato per audience
- [ ] **Help System**: Sistema di help contestuale disponibile
- [ ] **Onboarding**: Processo di onboarding efficace per nuovi utenti
- [ ] **Error Messages**: Messaggi di errore utili e actionable

---

## UAT Test Scenarios

### Test Scenario Matrix

| Scenario | User Type | Device | Priority | Estimated Time |
|----------|-----------|--------|----------|----------------|
| First-time usage | New User | Desktop | High | [30] min |
| Daily workflow | Expert User | Desktop | Critical | [15] min |
| Mobile access | Power User | Mobile | High | [20] min |
| Error recovery | Average User | Desktop | Medium | [15] min |
| Accessibility | Disabled User | Desktop+AT | High | [45] min |

### Detailed Test Cases

#### TC-UA-001: New User Onboarding

**Objective**: Verificare che un nuovo utente possa utilizzare la funzionalità senza formazione

**Pre-conditions**:

- Utente ha credenziali valide
- Non ha mai usato il sistema prima
- Usa browser supportato su desktop

**Test Steps**:

- Login nel sistema
- Navigare verso la funzionalità
- Leggere eventuali istruzioni/tooltip
- Tentare di completare [task specifico]
- Osservare comportamento e feedback del sistema

**Expected Results**:

- Utente completa task in <= [X] minuti
- Massimo [Y] errori commessi
- User satisfaction >= [Z]/10
- Richiede help <= [N] volte

#### TC-UA-002: Expert User Efficiency

**Objective**: Verificare che utenti esperti possano lavorare efficientemente

**Pre-conditions**:

- Utente esperto con [X] mesi di esperienza
- Conosce shortcuts e best practices
- Ambiente di lavoro tipico

**Test Steps**:

- Eseguire workflow quotidiano tipico
- Utilizzare shortcuts disponibili
- Completare [lista task] senza interruzioni
- Misurare tempo e errori

**Expected Results**:

- Tutti task completati in <= [X] minuti totali
- Zero errori nelle operazioni standard
- Shortcuts funzionano come previsto
- Workflow fluido senza blocchi

---

## UAT Team e Roles

### UAT Coordinator

**Name**: [Nome]  
**Role**: [Ruolo aziendale]  
**Responsibilities**: 

- Planning UAT activities
- Coordinating test sessions
- Reporting results to stakeholders

### Business Users (Testers)

| Name | Role | Experience | Availability | Focus Area |
|------|------|------------|--------------|------------|
| [Nome1] | [Ruolo] | [Exp Level] | [Ore/settimana] | [Area] |
| [Nome2] | [Ruolo] | [Exp Level] | [Ore/settimana] | [Area] |
| [Nome3] | [Ruolo] | [Exp Level] | [Ore/settimana] | [Area] |

### Support Team

**Product Owner**: [Nome] - Decisioni su acceptance  
**UX Designer**: [Nome] - Feedback su usability  
**Business Analyst**: [Nome] - Chiarimenti requisiti  
**Technical Support**: [Nome] - Supporto tecnico durante UAT

---

## UAT Environment

### Environment Setup

**Environment Type**: [Production-like | Dedicated UAT | Staging]  
**URL/Access**: [URL ambiente UAT]  
**Data**: [Production-like data | Anonymized production | Synthetic]  
**Integrations**: [Sistemi integrati disponibili]

### Test Data

**User Accounts**: [Account per diversi ruoli]  
**Business Data**: [Dati business per test realistici]  
**Edge Cases**: [Dati per testare casi limite]  
**Reset Procedure**: [Come resettare dati tra test]

### Tools and Resources

**Documentation**: [Link a user guides/manuals]  
**Training Materials**: [Materiali training se necessari]  
**Feedback Collection**: [Tool per raccogliere feedback]  
**Screen Recording**: [Tool per recording sessioni]

---

## Success Metrics

### Quantitative Metrics

**Task Success Rate**: Target >= [%]  
**Task Completion Time**: Target <= [minuti]  
**Error Rate**: Target <= [% errori/task]  
**Help Usage**: Target <= [% sessioni che richiedono help]  
**User Satisfaction**: Target >= [valore]/10

### Qualitative Metrics

**Ease of Use**: [Rating scale 1-10]  
**Usefulness**: [Quanto la feature è utile per il lavoro]  
**Likelihood to Recommend**: [Net Promoter Score]  
**Overall Experience**: [Rating esperienza complessiva]

### Business Metrics

**Feature Adoption**: [% utenti che adottano la feature]  
**Task Efficiency Improvement**: [% miglioramento vs processo attuale]  
**Support Tickets**: [Riduzione ticket supporto]  
**Training Time**: [Tempo formazione necessario]

---

## UAT Schedule

### Pre-UAT Phase

- **UAT Planning**: [Data inizio] - [Data fine]
- **Environment Setup**: [Data inizio] - [Data fine]
- **User Training**: [Data inizio] - [Data fine]
- **Test Data Preparation**: [Data inizio] - [Data fine]

### UAT Execution Phase

- **Week 1**: [Focus area 1] - [Date]
- **Week 2**: [Focus area 2] - [Date]  
- **Week 3**: [Focus area 3] - [Date]
- **Buffer Week**: [Issue resolution] - [Date]

### Post-UAT Phase

- **Results Analysis**: [Data inizio] - [Data fine]
- **Issue Resolution**: [Data inizio] - [Data fine]
- **Sign-off**: [Data target]
- **Go-Live Preparation**: [Data inizio] - [Data fine]

### Key Milestones

- **UAT Environment Ready**: [Data]
- **Users Trained**: [Data]
- **50% Test Scenarios Complete**: [Data]
- **All Critical Issues Resolved**: [Data]
- **UAT Sign-off**: [Data]

---

## Test Results e Feedback

### Test Execution Summary

| Test Session | Date | Participants | Scenarios Tested | Pass Rate | Issues Found |
|--------------|------|--------------|------------------|-----------|--------------|
| Session 1 | [Data] | [N] users | [Scenarios] | [%] | [N] issues |
| Session 2 | [Data] | [N] users | [Scenarios] | [%] | [N] issues |
| Session 3 | [Data] | [N] users | [Scenarios] | [%] | [N] issues |

### User Feedback Summary

| Feedback Category | Rating (1-10) | Comments Summary | Action Items |
|-------------------|---------------|------------------|--------------|
| Ease of Use | [Rating] | [Summary] | [Actions] |
| Usefulness | [Rating] | [Summary] | [Actions] |
| Performance | [Rating] | [Summary] | [Actions] |
| Overall Satisfaction | [Rating] | [Summary] | [Actions] |

### Issues Identified

| Issue ID | Description | Severity | Reporter | Status | Resolution |
|----------|-------------|----------|----------|--------|------------|
| UAT-001 | [Description] | [High/Med/Low] | [User] | [Open/Resolved] | [Resolution] |
| UAT-002 | [Description] | [High/Med/Low] | [User] | [Open/Resolved] | [Resolution] |

### Improvement Recommendations

- **[Area 1]**: [Recommendation with rationale]
- **[Area 2]**: [Recommendation with rationale]
- **[Area 3]**: [Recommendation with rationale]

---

## Tracciabilità

### Business Requirements

**Business Objectives**: [OBJ-XXX] - [Obiettivo business]  
**User Stories**: [US-XXX] - [User story implementata]  
**Epic**: [EP-XXX] - [Epic di riferimento]  
**Business Rules**: [BR-XXX] - [Regole business implementate]

### Technical Implementation

**Functional Requirements**: [REQ-F-XXX] - [Requisiti implementati]  
**UI/UX Design**: [UI-XXX] - [Design implementato]  
**Integration Points**: [Integration points testati]  
**Performance Requirements**: [Performance testata]

### Quality Assurance

**Functional Tests**: [Test funzionali passati]  
**Integration Tests**: [Test integrazione passati]  
**Performance Tests**: [Test performance passati]  
**Security Tests**: [Test security passati]

---

## Risks e Mitigation

### UAT Execution Risks

- **[Rischio 1]**: [Es. User availability limitata]  
  *Impact*: [Ritardo schedule UAT]  
  *Mitigation*: [Plan B con utenti backup]  
  *Contingency*: [Estensione timeline]

- **[Rischio 2]**: [Es. Environment instability]  
  *Impact*: [Test results non affidabili]  
  *Mitigation*: [Environment monitoring e backup]  
  *Contingency*: [Ambiente alternativo]

### Business Risks

- **[Rischio Business]**: [Es. Feature non meet user expectations]  
  *Impact*: [Adozione bassa, ROI negativo]  
  *Mitigation*: [Iterative feedback e adjustments]  
  *Contingency*: [Scope reduction o redesign]

### Technical Risks

- **[Rischio Tecnico]**: [Es. Performance issues under real usage]  
  *Impact*: [User experience degraded]  
  *Mitigation*: [Performance monitoring e tuning]  
  *Contingency*: [Infrastructure scaling]

---

## Sign-off e Acceptance

### UAT Completion Criteria

- [ ] Tutti gli scenari critici testati con successo
- [ ] User satisfaction score >= target
- [ ] Nessun issue critico aperto
- [ ] Performance accettabile per utenti
- [ ] Training materials validated
- [ ] Support procedures tested

### Business Acceptance

- [ ] Business value demonstrated
- [ ] User adoption strategy approved
- [ ] ROI projection realistic
- [ ] Change management plan ready
- [ ] Go-live criteria met

### User Acceptance

- [ ] Primary users satisfied with functionality
- [ ] Task efficiency improved vs current process
- [ ] Learning curve acceptable
- [ ] Users ready for production rollout

### Approvals

| Ruolo | Nome | Data | Firma | Comments |
|-------|------|------|-------|----------|
| UAT Coordinator | [Nome] | ______ | ______ | [Comments] |
| Primary Business User | [Nome] | ______ | ______ | [Comments] |
| Product Owner | [Nome] | ______ | ______ | [Comments] |
| Business Sponsor | [Nome] | ______ | ______ | [Comments] |

---

## Change History

| Versione | Data | Autore | Cambiamenti | Impact su UAT |
|----------|------|--------|-------------|---------------|
| 1.0 | [Data] | [Nome] | Versione iniziale | - |
| 1.1 | [Data] | [Nome] | [Cambiamenti] | [Impatto] |

---

## Supporting Documentation

### User Documentation

- [Link a user manual/guide]
- [Link a training materials]
- [Link a quick reference guide]
- [Link a FAQ]

### Test Documentation

- [Link a detailed test scripts]
- [Link a test data documentation]
- [Link a environment setup guide]
- [Link a UAT handbook]

### Business Documentation

- [Link a business case]
- [Link a user personas]
- [Link a user journey maps]
- [Link a change management plan]

---

*Criterio di accettazione utente creato il: [Data]*  
*Ultima validazione: [Data]*  
*Prossima review: [Data]*  
*UAT Coordinator: [Nome responsabile]*
