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
