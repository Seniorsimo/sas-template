# Requisiti Non-Funzionali

Questa cartella contiene tutti i requisiti non-funzionali del sistema, organizzati per categoria di qualità.

## Panoramica

I **Requisiti Non-Funzionali** definiscono le qualità del sistema: come deve performare, quanto deve essere sicuro, usabile, affidabile, etc. Questi requisiti sono spesso chiamati "ilities" e sono critici per il successo del sistema.

## Struttura Organizzativa

```
non-functional-requirements/
├── performance/
│   ├── README.md                     (Requisiti di performance)
│   ├── REQ-NF-PERF-001.md          (Tempo di risposta)
│   └── REQ-NF-PERF-XXX.md          (Altri requisiti performance)
├── security/
│   ├── README.md                     (Requisiti di sicurezza)
│   ├── REQ-NF-SEC-001.md           (Autenticazione)
│   └── REQ-NF-SEC-XXX.md           (Altri requisiti security)
├── usability/
│   ├── README.md                     (Requisiti di usabilità)
│   ├── REQ-NF-USA-001.md           (Accessibilità)
│   └── REQ-NF-USA-XXX.md           (Altri requisiti usability)
├── reliability/
│   ├── README.md                     (Requisiti di affidabilità)
│   ├── REQ-NF-REL-001.md           (Disponibilità)
│   └── REQ-NF-REL-XXX.md           (Altri requisiti reliability)
├── scalability/
│   ├── README.md                     (Requisiti di scalabilità)
│   ├── REQ-NF-SCAL-001.md          (Carico utenti)
│   └── REQ-NF-SCAL-XXX.md          (Altri requisiti scalability)
├── compatibility/
│   ├── README.md                     (Requisiti di compatibilità)
│   ├── REQ-NF-COMP-001.md          (Browser support)
│   └── REQ-NF-COMP-XXX.md          (Altri requisiti compatibility)
└── README.md                         (Questo file)
```

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
`[ID]-[nome-breve].md`

**Esempi**:
- `REQ-NF-PERF-001-response-time.md`
- `REQ-NF-SEC-001-authentication.md`
- `REQ-NF-USA-001-accessibility.md`

## Categorie Principali

### Performance
Velocità, throughput, utilizzo risorse:
- Tempo di risposta
- Throughput (operazioni/secondo)
- Utilizzo CPU/memoria
- Capacità di carico

### Security
Protezione dati e sistema:
- Autenticazione e autorizzazione
- Crittografia dati
- Audit e logging
- Protezione attacchi

### Usability
Facilità d'uso e user experience:
- Accessibilità (WCAG)
- User interface design
- Learnability
- User satisfaction

### Reliability
Affidabilità e disponibilità:
- Uptime/disponibilità
- MTBF (Mean Time Between Failures)
- MTTR (Mean Time To Recovery)
- Error handling

### Scalability
Capacità di crescita:
- Scalabilità orizzontale
- Scalabilità verticale
- Gestione del carico
- Elasticità

### Compatibility
Interoperabilità e compatibilità:
- Browser support
- Sistema operativo
- Versioni software
- Standard e protocolli

## Template Requisito Non-Funzionale

```markdown
# REQ-NF-[CAT]-XXX: [Titolo Requisito]

## Informazioni Generali
**ID**: REQ-NF-[CAT]-XXX
**Categoria**: [Performance|Security|Usability|etc.]
**Priorità**: Critical | High | Medium | Low
**Misurabilità**: Quantitative | Qualitative

## Descrizione
[Cosa il sistema deve fare dal punto di vista qualitativo]

## Metriche e Target
**Metrica**: [Come misurare]
**Target Value**: [Valore obiettivo]
**Acceptance Criteria**: [Criteri di accettazione]

## Metodo di Verifica
[Come testare e validare questo requisito]

## Tracciabilità
**Functional Requirements**: [REQ-F-XXX]
**User Stories**: [US-XXX]
```

## Prioritizzazione

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

## Quality Attributes Matrix

| Quality Attribute | Importanza | Difficoltà | Priorità |
|-------------------|------------|------------|----------|
| Performance | High | Medium | High |
| Security | Critical | High | Critical |
| Usability | High | Low | High |
| Reliability | High | Medium | High |
| Scalability | Medium | High | Medium |

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

### 1. Identification
- Business analysis
- Stakeholder interviews
- Industry benchmarks
- Regulatory requirements

### 2. Specification
- Quantitative definition
- Acceptance criteria
- Verification methods
- Priority assignment

### 3. Design & Architecture
- Architecture decisions
- Technology selection
- Pattern implementation
- Resource planning

### 4. Implementation
- Code implementation
- Configuration setup
- Environment preparation
- Tool integration

### 5. Verification
- Testing execution
- Measurement collection
- Performance monitoring
- Quality assessment

### 6. Maintenance
- Continuous monitoring
- Performance tuning
- Requirement updates
- Improvement implementation

---

*I requisiti non-funzionali sono spesso più difficili da implementare dei funzionali, ma sono quelli che determinano il successo o fallimento del sistema.*
