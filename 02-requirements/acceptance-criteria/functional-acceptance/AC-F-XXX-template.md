# AC-F-XXX: [Titolo Criterio di Accettazione Funzionale]

## Informazioni Generali

**ID**: AC-F-XXX  
**Requisito Collegato**: [REQ-F-XXX]  
**User Story Collegata**: [US-XXX]  
**Feature/Modulo**: [Nome feature o modulo]  
**Priorità**: Critical | High | Medium | Low  
**Status**: Draft | Review | Approved | Testing | Verified | Closed  
**Assigned to**: [QA Engineer responsabile]

---

## Descrizione

### Sommario

[Breve descrizione di cosa viene testato e validato]

### Contesto

[Contesto della funzionalità e perché questo criterio è importante]

### Valore per il Business

[Quale valore porta questo criterio al business]

---

## Scenario Principale

### Happy Path

**Given** [precondizione - stato iniziale del sistema]  
**When** [azione dell'utente o evento scatenante]  
**Then** [risultato atteso e osservabile]  
**And** [condizioni aggiuntive che devono essere verificate]

### Esempio Concreto

**Given** che sono un utente autenticato con ruolo "Manager"  
**When** accedo alla sezione "Reports" e clicco su "Genera Report Vendite"  
**Then** il sistema genera un report PDF con i dati delle vendite dell'ultimo mese  
**And** il report viene scaricato automaticamente nel browser  
**And** il sistema registra l'azione nel log di audit

---

## Scenari Alternativi

### Scenario 2: [Nome scenario alternativo]

**Given** [precondizione diversa]  
**When** [azione alternativa]  
**Then** [risultato atteso alternativo]  
**And** [condizioni aggiuntive]

### Scenario 3: [Nome altro scenario]

**Given** [altra precondizione]  
**When** [altra azione]  
**Then** [altro risultato atteso]  
**And** [altre condizioni]

---

## Scenari di Errore

### Error Scenario 1: [Tipo di errore]

**Given** [precondizione che porta all'errore]  
**When** [azione che scatena l'errore]  
**Then** [comportamento atteso in caso di errore]  
**And** [messaggio di errore o recovery action]

### Error Scenario 2: [Altro tipo di errore]

**Given** [altra precondizione di errore]  
**When** [altra azione che causa errore]  
**Then** [altro comportamento atteso]  
**And** [altra gestione errore]

---

## Edge Cases

### Edge Case 1: [Caso limite]

**Given** [condizione al limite]  
**When** [azione sul caso limite]  
**Then** [comportamento atteso]

### Edge Case 2: [Altro caso limite]

**Given** [altra condizione limite]  
**When** [altra azione limite]  
**Then** [altro comportamento atteso]

---

## Criteri Dettagliati di Accettazione

### Criteri Funzionali

- [ ] **[Criterio 1]**: [Descrizione specifica e misurabile]
- [ ] **[Criterio 2]**: [Altra descrizione specifica]
- [ ] **[Criterio 3]**: [Terzo criterio specifico]
- [ ] **[Criterio 4]**: [Quarto criterio se necessario]

### Criteri di UI/UX

- [ ] **Interfaccia**: [Elementi UI devono essere presenti e funzionali]
- [ ] **Navigazione**: [Flusso di navigazione deve essere intuitivo]
- [ ] **Feedback**: [Sistema deve fornire feedback appropriato]
- [ ] **Accessibility**: [Requisiti di accessibilità se applicabili]

### Criteri di Performance

- [ ] **Response Time**: [Tempo massimo di risposta accettabile]
- [ ] **Throughput**: [Volume di operazioni supportate]
- [ ] **Resource Usage**: [Utilizzo risorse entro limiti]

### Criteri di Sicurezza

- [ ] **Authorization**: [Controlli di autorizzazione appropriati]
- [ ] **Data Protection**: [Protezione dati sensibili]
- [ ] **Audit**: [Logging appropriato delle azioni]

---

## Test Data Requirements

### Dati di Test Necessari

**Utenti**:

- [Tipo utente 1] con permessi [specifici]
- [Tipo utente 2] con permessi [diversi]
- [Utente con permessi limitati]

**Dati Master**:

- [Tipo di dato 1]: [Quantità e caratteristiche]
- [Tipo di dato 2]: [Altre caratteristiche necessarie]

**Configurazioni**:

- [Setting 1]: [Valore specifico]
- [Setting 2]: [Altro valore]

### Precondizioni di Sistema

- Database in stato [specifico]
- Servizi esterni [disponibili/configurati]
- Cache [vuota/precaricata]

---

## Environment Requirements

### Ambiente di Test

**Environment Type**: [Development | Staging | UAT | Production-like]  
**Data Refresh**: [Frequenza aggiornamento dati]  
**External Dependencies**: [Sistemi esterni necessari]

### Configurazioni Specifiche

- **Application Settings**: [Configurazioni app necessarie]
- **Database Setup**: [Setup specifico database]
- **Network Config**: [Configurazioni di rete]
- **Security Setup**: [Configurazioni sicurezza]

---

## Verification Methods

### Manual Testing

**Steps**:

1. [Passo 1 del test manuale]
2. [Passo 2 del test manuale]
3. [Passo 3 del test manuale]

**Expected Results**: [Risultati attesi per ogni passo]

### Automated Testing

**Test Automation**: [Se applicabile, tipo di automazione]  
**Test Scripts**: [Riferimenti a script automatizzati]  
**CI/CD Integration**: [Come integrato nel pipeline]

### Validation Criteria

**Success Criteria**: [Come determinare il successo]  
**Failure Criteria**: [Cosa costituisce un fallimento]  
**Acceptance Threshold**: [Soglie di accettazione]

---

## Tracciabilità

### Upstream Traceability

**Business Objectives**: [OBJ-XXX] - [Riferimento a obiettivi business]  
**User Stories**: [US-XXX] - [Titolo user story]  
**Functional Requirements**: [REQ-F-XXX] - [Titolo requisito]

### Downstream Traceability

**Test Cases**: [TC-XXX, TC-XXX] - [Riferimenti test cases]  
**Defects**: [BUG-XXX] - [Se ci sono bug collegati]  
**Implementation**: [Link a commit/branch se disponibile]

### Horizontal Traceability

**Related AC**: [AC-XXX] - [Altri criteri collegati]  
**Dependencies**: [AC-XXX] - [Criteri da cui dipende]  
**Conflicts**: [Eventuali conflitti con altri criteri]

---

## Risks and Mitigation

### Testing Risks

- **[Rischio 1]**: [Descrizione del rischio]  
  *Mitigation*: [Piano di mitigazione]

- **[Rischio 2]**: [Altro rischio di testing]  
  *Mitigation*: [Altro piano di mitigazione]

### Business Risks

- **[Rischio Business]**: [Impatto sul business se criterio non soddisfatto]  
  *Mitigation*: [Come mitigare il rischio business]

---

## Testing Schedule

### Timeline

- **Test Preparation**: [Data inizio] - [Data fine]
- **Test Execution**: [Data inizio] - [Data fine]
- **Results Review**: [Data inizio] - [Data fine]
- **Sign-off**: [Data target]

### Milestones

- **Environment Ready**: [Data]
- **Test Data Ready**: [Data]
- **First Pass Complete**: [Data]
- **All Criteria Verified**: [Data]

---

## Test Results

### Execution Summary

| Test Run | Date | Tester | Status | Notes |
|----------|------|--------|--------|-------|
| 1 | [Data] | [Nome] | [Pass/Fail] | [Note] |
| 2 | [Data] | [Nome] | [Pass/Fail] | [Note] |

### Criteria Status

- [ ] **Scenario Principale**: [Status e note]
- [ ] **Scenari Alternativi**: [Status e note]
- [ ] **Scenari di Errore**: [Status e note]
- [ ] **Edge Cases**: [Status e note]

### Issues Found

| ID | Descrizione | Severità | Status | Assignee |
|----|-------------|----------|--------|----------|
| [Issue-1] | [Descrizione] | [High/Med/Low] | [Open/Closed] | [Nome] |

---

## Change History

| Versione | Data | Autore | Cambiamenti | Impatto |
|----------|------|--------|-------------|---------|
| 1.0 | [Data] | [Nome] | Versione iniziale | - |
| 1.1 | [Data] | [Nome] | [Descrizione cambiamenti] | [Impatto su test] |

---

## Attachments & References

### Supporting Documents

- [Link a mockup/wireframe]
- [Link a documentation aggiuntiva]
- [Riferimenti a standard/guidelines]

### Related Test Assets

- [Link a test scripts]
- [Link a test data files]
- [Link a environment setup guides]
