# Istruzioni per i Requisiti Non-Funzionali

Questo documento contiene le linee guida per la compilazione dei requisiti non-funzionali del sistema.

## Struttura Organizzativa

La cartella `non-functional-requirements` è organizzata nelle seguenti sottocartelle, una per ogni categoria principale di requisiti non-funzionali:

- **performance/** - Requisiti relativi alle prestazioni del sistema
- **security/** - Requisiti relativi alla sicurezza e protezione
- **usability/** - Requisiti relativi all'esperienza utente e facilità d'uso
- **reliability/** - Requisiti relativi all'affidabilità e disponibilità
- **scalability/** - Requisiti relativi alla capacità di crescita
- **compatibility/** - Requisiti relativi all'interoperabilità e compatibilità

## Convenzioni di Naming

### ID Requisiti per Categoria

- **Performance**: `REQ-NF-PERF-XXX`
- **Security**: `REQ-NF-SEC-XXX`
- **Usability**: `REQ-NF-USA-XXX`
- **Reliability**: `REQ-NF-REL-XXX`
- **Scalability**: `REQ-NF-SCAL-XXX`
- **Compatibility**: `REQ-NF-COMP-XXX`
- **Maintainability**: `REQ-NF-MAINT-XXX`
- **Portability**: `REQ-NF-PORT-XXX`

### File Names

`REQ-NF-[CAT]-XXX-[nome-breve].md`

**Esempi**:
- `REQ-NF-PERF-001-response-time.md`
- `REQ-NF-SEC-001-authentication.md`
- `REQ-NF-USA-001-accessibility.md`

## Template Requisito Non-Funzionale

Utilizzare sempre il template `REQ-NF-XXX-template.md` come base per la creazione di nuovi requisiti non-funzionali.

## Prioritizzazione

La priorità dei requisiti non-funzionali deve essere una delle seguenti:

### Critical
Requisiti senza i quali il sistema è inutilizzabile
- Security essenziali
- Performance critiche
- Availability minimale

### High
Requisiti che impattano significativamente l'utente
- User experience
- Performance auspicate
- Compatibility principale

### Medium
Requisiti che migliorano la qualità
- Usability avanzata
- Performance ottimali
- Maintainability

### Low
Requisiti nice-to-have
- Features accessorie
- Optimizations
- Future compatibility

## SMART Criteria

I requisiti non-funzionali devono essere **SMART**:
- **Specific**: Specificare esattamente cosa
- **Measurable**: Quantificabile con metriche
- **Achievable**: Raggiungibile tecnicamente
- **Relevant**: Rilevante per il business
- **Time-bound**: Con deadline chiare

## Metodi di Verifica

Per ogni categoria di requisiti non-funzionali sono definiti specifici metodi di verifica:

### Performance Testing
- Load testing
- Stress testing
- Volume testing
- Endurance testing

### Security Testing
- Penetration testing
- Vulnerability scanning
- Security code review
- Compliance audit

### Usability Testing
- User testing sessions
- Accessibility audit
- UX review
- A/B testing

### Reliability Testing
- Failure testing
- Recovery testing
- Availability monitoring
- Chaos engineering

## Tracciabilità NFR

### Forward Traceability
NFR → Architecture Decisions → Design Patterns → Implementation → Testing

### Backward Traceability
Business Goals → User Needs → Quality Attributes → NFR

### Horizontal Traceability
NFR ↔ Functional Requirements ↔ User Stories ↔ Test Cases

## Best Practices

### Do's
- **Quantifica sempre** quando possibile
- **Usa metriche standard** dell'industria
- **Collega agli obiettivi** di business
- **Pianifica testing specifico** per ogni NFR
- **Considera trade-offs** tra qualità diverse

### Don'ts
- **Non essere vago** ("il sistema deve essere veloce")
- **Non ignorare** le limitazioni tecniche
- **Non dimenticare** il costo di implementazione
- **Non sottovalutare** l'impatto su altri requisiti
- **Non rimandare** la validazione

## NFR Lifecycle

1. **Identification**
   - Business analysis
   - Stakeholder interviews
   - Industry benchmarks
   - Regulatory requirements

2. **Specification**
   - Quantitative definition
   - Acceptance criteria
   - Verification methods
   - Priority assignment

3. **Design & Architecture**
   - Architecture decisions
   - Technology selection
   - Pattern implementation
   - Resource planning

4. **Implementation**
   - Code implementation
   - Configuration setup
   - Environment preparation
   - Tool integration

5. **Verification**
   - Testing execution
   - Measurement collection
   - Performance monitoring
   - Quality assessment

6. **Maintenance**
   - Continuous monitoring
   - Performance tuning
   - Requirement updates
   - Improvement implementation

## Casi di Studio

### E-commerce

- **Performance**: Il tempo di caricamento della pagina prodotto deve essere inferiore a 2 secondi.
- **Security**: I dati delle carte di credito devono essere conformi allo standard PCI-DSS.
- **Usability**: Il processo di checkout deve essere completabile in meno di 3 passaggi.
- **Reliability**: Il sistema deve garantire un uptime del 99.9% durante il Black Friday.
- **Scalability**: Il sistema deve poter gestire un aumento del traffico del 500% durante i saldi.
- **Compatibility**: Il sito deve essere compatibile con i principali browser (Chrome, Firefox, Safari) e dispositivi mobili.

### Banking

- **Performance**: Le transazioni online devono essere processate in meno di 3 secondi.
- **Security**: L'autenticazione a due fattori (2FA) è obbligatoria per tutte le operazioni dispositive.
- **Usability**: L'app mobile deve essere accessibile a utenti con disabilità visive (WCAG 2.1 AA).
- **Reliability**: Il sistema deve garantire la consistenza dei dati delle transazioni (ACID).
- **Scalability**: Il sistema deve poter gestire un aumento del 20% del numero di clienti ogni anno.
- **Compatibility**: L'app deve essere compatibile con le ultime due versioni di iOS e Android.

### Healthcare

- **Performance**: L'accesso alla cartella clinica di un paziente deve avvenire in meno di 1 secondo.
- **Security**: I dati sanitari dei pazienti devono essere conformi allo standard HIPAA.
- **Usability**: I medici devono poter prescrivere un farmaco in meno di 5 click.
- **Reliability**: Il sistema deve garantire un uptime del 99.99% per l'accesso ai dati critici.
- **Scalability**: Il sistema deve poter archiviare e gestire petabyte di dati di imaging medicale.
- **Compatibility**: Il sistema deve potersi integrare con i sistemi di anagrafe sanitaria regionali.
