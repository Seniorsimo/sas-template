# Criteri di Accettazione Non-Funzionale

## Panoramica dei Test Non-Funzionali

[Fornire una panoramica dell'approccio adottato per i test non-funzionali nel progetto [NOME PROGETTO]. Descrivere brevemente i principali attributi di qualità testati e la loro importanza per il successo del progetto.]

## Service Level Agreements (SLA)

[Elencare i principali Service Level Agreements stabiliti per il sistema e il loro stato di conformità attuale.]

### Performance SLA

| Metrica | Target | Risultato Attuale | Status |
|---------|--------|------------------|--------|
| Tempo di risposta medio | [Target] | [Attuale] | [Pass/Fail] |
| Tempo di risposta 95° percentile | [Target] | [Attuale] | [Pass/Fail] |
| Throughput | [Target] | [Attuale] | [Pass/Fail] |
| Utenti concorrenti supportati | [Target] | [Attuale] | [Pass/Fail] |

### Availability SLA

| Metrica | Target | Risultato Attuale | Status |
|---------|--------|------------------|--------|
| Uptime | [Target]% | [Attuale]% | [Pass/Fail] |
| MTBF (Mean Time Between Failures) | [Target] | [Attuale] | [Pass/Fail] |
| MTTR (Mean Time To Recovery) | [Target] | [Attuale] | [Pass/Fail] |
| Scheduled Downtime | [Target] | [Attuale] | [Pass/Fail] |

### Security SLA

| Metrica | Target | Risultato Attuale | Status |
|---------|--------|------------------|--------|
| Vulnerabilità critiche | [Target] | [Attuale] | [Pass/Fail] |
| Tempo di risoluzione vulnerabilità | [Target] | [Attuale] | [Pass/Fail] |
| Compliance standard | [Target] | [Attuale] | [Pass/Fail] |
| Penetration Test Score | [Target] | [Attuale] | [Pass/Fail] |

## Come Utilizzare il Template

### 1. Identifica il Quality Attribute

```bash
# Performance
AC-NF-PERF-001-response-time.md

# Security  
AC-NF-SEC-001-authentication.md

# Usability
AC-NF-USA-001-accessibility.md

## Risultati dei Test Non-Funzionali

### Test di Performance

[Descrivere i risultati dei test di performance condotti sul sistema, includendo le condizioni di test (carico, durata, ambiente) e le metriche chiave rilevate.]

#### Risultati Load Test

| Test Scenario | Utenti Concorrenti | Durata | Tempo Risposta Medio | Tempo Risposta 95° | Throughput | Status |
|---------------|-------------------|--------|---------------------|-------------------|-----------|--------|
| Login | [Numero] | [Durata] | [Tempo] | [Tempo] | [TPS] | [Pass/Fail] |
| Search | [Numero] | [Durata] | [Tempo] | [Tempo] | [TPS] | [Pass/Fail] |
| Checkout | [Numero] | [Durata] | [Tempo] | [Tempo] | [TPS] | [Pass/Fail] |
| Report Generation | [Numero] | [Durata] | [Tempo] | [Tempo] | [TPS] | [Pass/Fail] |

#### Risultati Stress Test

[Descrivere i risultati dei test di stress, focalizzandosi sul comportamento del sistema sotto carico estremo e sui punti di rottura identificati.]

### Test di Sicurezza

[Riassumere i risultati delle valutazioni di sicurezza condotte sul sistema, come penetration testing, vulnerability assessment, e security code review.]

## Security Acceptance Criteria

### Authentication Requirements

```
Login Success: Valid credentials accepted
Login Failure: Invalid credentials rejected
Lockout: After 5 failed attempts
Session: Timeout after 30 min inactivity
```

### Authorization Controls

```
Role-based: Access based on user roles
Resource-level: Granular permissions
Principle of least privilege: Minimal access
Audit trail: All access logged
```

### Data Protection

```
Encryption in transit: TLS 1.3 minimum
Encryption at rest: AES-256
PII handling: Anonymization/masking
#### Risultati Vulnerability Assessment

| Categoria | Vulnerabilità Critiche | Vulnerabilità Alte | Vulnerabilità Medie | Vulnerabilità Basse |
|-----------|------------------------|-------------------|---------------------|---------------------|
| Authentication | [Numero] | [Numero] | [Numero] | [Numero] |
| Authorization | [Numero] | [Numero] | [Numero] | [Numero] |
| Data Protection | [Numero] | [Numero] | [Numero] | [Numero] |
| Input Validation | [Numero] | [Numero] | [Numero] | [Numero] |
| API Security | [Numero] | [Numero] | [Numero] | [Numero] |

### Test di Usabilità

[Descrivere i risultati dei test di usabilità condotti con gli utenti finali, inclusi task completion rate, tempo di completamento delle attività, e feedback soggettivo.]

#### Metriche di Usabilità

| Task | Completion Rate | Tempo Medio | Errori | Soddisfazione Utente |
|------|----------------|------------|--------|---------------------|
| User Registration | [%] | [Tempo] | [Numero] | [Rating/5] |
| Product Search | [%] | [Tempo] | [Numero] | [Rating/5] |
| Checkout | [%] | [Tempo] | [Numero] | [Rating/5] |
| Account Management | [%] | [Tempo] | [Numero] | [Rating/5] |

### Test di Compatibilità

[Riassumere i risultati dei test di compatibilità su diversi browser, dispositivi e sistemi operativi.]
```

### Data Consistency

```
ACID compliance: Database transactions
Eventual consistency: Distributed systems
Backup verification: Regular restore tests
Data validation: Integrity checks
```

## Testing Approaches

### Performance Testing

- **Load Testing**: Comportamento sotto carico normale
- **Stress Testing**: Comportamento oltre capacità
- **Volume Testing**: Grandi quantità di dati
- **Endurance Testing**: Performance sostenute nel tempo

### Security Testing

- **Penetration Testing**: Simulazione attacchi
- **Vulnerability Scanning**: Ricerca vulnerabilità note
#### Matrice di Compatibilità

| Piattaforma | Chrome | Firefox | Safari | Edge | IE 11 |
|------------|--------|---------|--------|------|-------|
| Windows 10 | [Status] | [Status] | N/A | [Status] | [Status] |
| Windows 11 | [Status] | [Status] | N/A | [Status] | N/A |
| macOS | [Status] | [Status] | [Status] | [Status] | N/A |
| iOS | [Status] | [Status] | [Status] | N/A | N/A |
| Android | [Status] | [Status] | N/A | [Status] | N/A |

### Test di Scalabilità

[Descrivere i risultati dei test di scalabilità, inclusa la capacità del sistema di scalare orizzontalmente e verticalmente sotto diversi carichi.]

## Conformità e Standard

[Elencare gli standard di conformità rilevanti per il progetto e il loro stato di compliance attuale.]

| Standard | Status | Note |
|---------|--------|------|
| GDPR | [Conforme/Non Conforme] | [Note] |
| PCI-DSS | [Conforme/Non Conforme] | [Note] |
| WCAG 2.1 AA | [Conforme/Non Conforme] | [Note] |
| ISO 27001 | [Conforme/Non Conforme] | [Note] |
| HIPAA | [Conforme/Non Conforme] | [Note] |

## Raccomandazioni

[Fornire raccomandazioni basate sui risultati dei test non-funzionali, inclusi miglioramenti suggeriti e rischi identificati.]

### Security SLOs

```
Vulnerability Response: Critical <24h
Patch Management: Security patches <7 days
Incident Response: Detection <15 min
Access Review: Quarterly access review
```

### Usability SLOs

```
User Satisfaction: ≥ 4.5/5 rating
Support Tickets: ≤ 5% users need help
Task Success: ≥ 95% completion rate
Accessibility: 100% WCAG AA compliance
```

## Acceptance Testing Process

### Priorità di Intervento

| Area | Severità | Impatto | Complessità | Raccomandazione |
|------|----------|---------|-------------|-----------------|
| [Area] | [Alta/Media/Bassa] | [Alto/Medio/Basso] | [Alta/Media/Bassa] | [Descrizione intervento] |
| [Area] | [Alta/Media/Bassa] | [Alto/Medio/Basso] | [Alta/Media/Bassa] | [Descrizione intervento] |
| [Area] | [Alta/Media/Bassa] | [Alto/Medio/Basso] | [Alta/Media/Bassa] | [Descrizione intervento] |
| [Area] | [Alta/Media/Bassa] | [Alto/Medio/Basso] | [Alta/Media/Bassa] | [Descrizione intervento] |

## Confronto con la Concorrenza

[Comparare le performance non-funzionali del sistema con i principali concorrenti o benchmark di settore, evidenziando punti di forza e aree di miglioramento.]

| Attributo | Sistema Attuale | Concorrente 1 | Concorrente 2 | Benchmark Settore |
|-----------|---------------|--------------|--------------|-------------------|
| Performance | [Rating] | [Rating] | [Rating] | [Rating] |
| Sicurezza | [Rating] | [Rating] | [Rating] | [Rating] |
| Usabilità | [Rating] | [Rating] | [Rating] | [Rating] |
| Affidabilità | [Rating] | [Rating] | [Rating] | [Rating] |
| Scalabilità | [Rating] | [Rating] | [Rating] | [Rating] |

## Sign-off

### Approvals

| Ruolo | Nome | Data | Firma |
|-------|------|------|-------|
| Technical Architect | [Nome] | [Data] | [Firma] |
| Security Officer | [Nome] | [Data] | [Firma] |
| QA Manager | [Nome] | [Data] | [Firma] |
| Operations Manager | [Nome] | [Data] | [Firma] |
| Product Owner | [Nome] | [Data] | [Firma] |

## Prossimi Passi

[Descrivere le azioni pianificate per migliorare gli attributi non-funzionali del sistema nel prossimo periodo.]

---

*Documento generato il: [DATA GENERAZIONE]*  
*Versione: [NUMERO VERSIONE]*  
*Autori: [NOME AUTORI]*
