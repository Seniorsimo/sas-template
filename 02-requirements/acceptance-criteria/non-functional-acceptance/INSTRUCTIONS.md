# Non-Functional Acceptance Criteria Instructions

Questa sezione contiene le istruzioni per la creazione e gestione dei criteri di accettazione non funzionali del progetto.

## Scopo dei Non-Functional Acceptance Criteria

I **Non-Functional Acceptance Criteria** servono per:

- Verificare attributi di qualità del sistema (performance, security, usability)
- Validare requisiti non-funzionali quantificabili
- Testare comportamenti sotto stress e condizioni limite
- Confermare SLA e metriche di sistema

## Quality Attributes Coperti

### Performance

- **Response Time**: Tempi di risposta per operazioni
- **Throughput**: Transazioni per unità di tempo
- **Resource Utilization**: CPU, memoria, storage, network
- **Scalability**: Capacità di gestire carico crescente

### Security

- **Authentication**: Meccanismi di autenticazione
- **Authorization**: Controlli di accesso e permessi
- **Data Protection**: Crittografia, privacy, audit
- **Vulnerability**: Resistenza ad attacchi

### Usability

- **User Experience**: Facilità d'uso e soddisfazione
- **Accessibility**: Conformità standard accessibilità
- **Learnability**: Curva apprendimento per nuovi utenti
- **Error Prevention**: Prevenzione errori utente

### Reliability

- **Availability**: Uptime e disponibilità sistema
- **Fault Tolerance**: Gestione failure e recovery
- **Data Consistency**: Integrità e consistenza dati
- **MTBF/MTTR**: Mean time between/to recovery

### Compatibility

- **Browser Support**: Supporto browser multipli
- **Device Compatibility**: Mobile, tablet, desktop
- **Operating System**: Supporto OS diversi
- **Integration**: Compatibilità con sistemi esistenti

## Quando Utilizzare questo Template

### Scenari Ideali

- **Quality Validation**: Quando è necessario validare attributi di qualità
- **SLA Verification**: Per verificare Service Level Agreements
- **Stress Conditions**: Per testare il sistema sotto stress
- **Boundary Testing**: Per verificare comportamenti in condizioni limite
- **Compliance Checking**: Per verificare conformità a standard (sicurezza, accessibilità)

## Come Utilizzare il Template

### 1. Copia e Rinomina

```bash
# Copia il template
cp AC-NF-XXX-template.md AC-NF-PERF-001-response-time.md

# Esempio naming convention
AC-NF-{ATTRIBUTE}-{NUMBER}-{description}.md
```

Dove `{ATTRIBUTE}` può essere:
- PERF: Performance
- SEC: Security
- USA: Usability
- REL: Reliability
- COMP: Compatibility
- SCAL: Scalability
- MAINT: Maintainability

### 2. Compila le Sezioni Principali

- **Informazioni Generali**: ID, categoria, priorità
- **Attributo di Qualità**: Quale attributo si sta testando
- **Metriche e Threshold**: Valori misurabili e soglie
- **Metodologia di Test**: Come si effettua la misurazione
- **Ambiente di Test**: Requisiti per l'ambiente di test

### 3. Focus sulle Metriche Quantificabili

I criteri di accettazione non funzionali devono essere:

- **Misurabili**: Quantificabili con metriche precise
- **Oggettivi**: Non soggetti a interpretazioni soggettive
- **Verificabili**: Testabili con metodologie ripetibili
- **Con Threshold**: Con soglie di accettazione chiare

## Struttura dei Criteri

### Pattern per Criterio Non-Funzionale

```
Il sistema deve [azione] sotto [condizioni] con [metrica] di almeno/massimo [valore] misurata tramite [metodologia].
```

### Esempi di Criteri

- **Performance**: "Il sistema deve rispondere alle query di ricerca entro 0.5 secondi nel 95% dei casi sotto carico di 100 utenti concorrenti."
- **Security**: "Il sistema deve resistere a test di penetrazione di livello OWASP Top 10 senza vulnerabilità di severità alta."
- **Usability**: "Il tempo di completamento del processo di checkout deve essere inferiore a 2 minuti per il 90% degli utenti in test di usabilità."

## Test e Misurazione

### Strumenti di Misurazione

Per ogni attributo di qualità, specificare:

- **Tools**: Strumenti utilizzati per test/misurazione
- **Test Scripts**: Riferimenti a script di test automatici
- **Test Data**: Volume e tipo di dati necessari
- **Monitoring**: Come monitorare durante i test

### Ambiente di Test

Specificare chiaramente i requisiti di ambiente:

- **Hardware**: Specifiche HW per ambiente test
- **Software**: Componenti SW e versioni
- **Network**: Configurazioni e simulazioni
- **Data**: Volume dati necessario per test realistici

## Checklist Qualità AC Non-Funzionali

### Completezza

- [ ] Tutti i requisiti non-funzionali coperti
- [ ] Metriche quantificabili definite
- [ ] Soglie di accettazione specificate
- [ ] Metodologie di test descritte
- [ ] Condizioni di test definite

### Chiarezza

- [ ] Criteri esposti in modo non ambiguo
- [ ] Metriche espresse in unità di misura standard
- [ ] Condizioni di test chiaramente specificate
- [ ] Limiti e constraints esplicitati
- [ ] Terminologia tecnica appropriata

### Testabilità

- [ ] Metodologie di test fattibili
- [ ] Strumenti di misurazione identificati
- [ ] Ambiente di test specificato
- [ ] Test data requirements definiti
- [ ] Procedure di test ripetibili

### Traceability

- [ ] Collegati a requisiti non-funzionali
- [ ] Allineati a standard di settore
- [ ] Mappati su obiettivi di business
- [ ] Collegati a KPI operativi

## Best Practices

### Durante la Definizione

1. **Differenzia SLA da goals**: Distingui tra minimi accettabili e obiettivi ottimali
2. **Usa benchmark di settore**: Confronta con standard di mercato quando possibile
3. **Evita metriche non misurabili**: Come "user-friendly" o "intuitivo" senza definizione
4. **Considera costi/benefici**: Valuta il ROI di ogni criterio non-funzionale
5. **Coinvolgi esperti tecnici**: Per definire soglie realistiche e metodologie di test

### Durante l'Implementazione

1. **Monitora metriche in CI/CD**: Includi test non-funzionali nell'integrazione continua
2. **Definisci baseline**: Stabilisci valori di riferimento per confronto
3. **Applica profiling**: Identifica bottlenecks e ottimizza continuamente
4. **Documenta trade-offs**: Esplicita compromessi tra attributi di qualità
5. **Verifica risorse test**: Assicura che l'ambiente di test sia appropriato

### Durante i Test

1. **Usa carico realistico**: Simula condizioni di produzione quanto possibile
2. **Automatizza misurazione**: Utilizza tooling per misurazioni oggettive
3. **Combina metriche**: Valuta correlazioni tra diverse metriche
4. **Testa oltre i limiti**: Verifica comportamento oltre le soglie per capire margini
5. **Registra serie temporali**: Monitora trend e pattern nel tempo

## Common Pitfalls

### Errori da Evitare

- **Metriche vaghe**: "Il sistema deve essere veloce" invece di "Tempo risposta <2s"
- **Soglie irrealistiche**: Obiettivi impossibili o troppo costosi da raggiungere
- **Focus esclusivo su una metrica**: Ottimizzare un parametro a scapito di altri
- **Ignorare contesto**: Non considerare ambiente target e pattern d'uso
- **Test in isolamento**: Testare performance senza dati realistici o carico

### Best Practices

- **Definisci percentili**: Non solo media ma 90°/95°/99° percentile
- **Considera degradazione**: Come il sistema si comporta sotto stress crescente
- **Specifica condizioni**: Sotto quali condizioni vengono misurate le metriche
- **Includi recovery**: Non solo failure ma anche recovery time
- **Documenta dipendenze**: Correlazioni tra attributi di qualità differenti

## Supporto e Contatti

Per domande sui Non-Functional Acceptance Criteria:

- **Architect**: [Responsabile architettura]
- **Performance Engineer**: [Responsabile test performance]
- **Security Lead**: [Responsabile sicurezza]
- **UX Lead**: [Responsabile user experience]
