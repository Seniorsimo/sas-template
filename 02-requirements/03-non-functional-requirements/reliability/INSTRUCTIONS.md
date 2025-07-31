# Istruzioni per i Requisiti di Affidabilità

Questo documento contiene le linee guida per la compilazione dei requisiti non-funzionali relativi all'affidabilità del sistema.

## Definizione

I requisiti di affidabilità definiscono come il sistema deve:
- Mantenersi disponibile (availability)
- Recuperare da guasti (recoverability)
- Funzionare senza errori (reliability)
- Gestire situazioni di errore (fault tolerance)

## Convenzioni di Naming

### ID Requisiti
Tutti i requisiti di affidabilità devono seguire la convenzione di naming:
- `REQ-NF-REL-XXX`

Dove XXX è un numero progressivo a tre cifre che inizia da 001.

### File Names
`REQ-NF-REL-XXX-[nome-breve].md`

**Esempi**:
- `REQ-NF-REL-001-availability.md`
- `REQ-NF-REL-002-fault-tolerance.md`
- `REQ-NF-REL-003-disaster-recovery.md`

## Categorie di Affidabilità

### Disponibilità (Availability)
- Definisce quanto tempo il sistema deve essere operativo
- Deve specificare percentuale di uptime
- Deve specificare periodi di manutenzione
- Esempi: "Il sistema deve garantire una disponibilità del 99.9% su base mensile"

### Tolleranza ai Guasti (Fault Tolerance)
- Definisce come il sistema deve gestire errori senza degradazione completa
- Deve specificare meccanismi di ridondanza
- Deve specificare failover automatici
- Esempi: "Il sistema deve continuare a funzionare anche in caso di guasto di un singolo nodo"

### Ripristino (Recoverability)
- Definisce come il sistema deve ripristinarsi dopo un guasto
- Deve specificare tempi di ripristino (RTO)
- Deve specificare punto di ripristino (RPO)
- Esempi: "Il sistema deve ripristinarsi completamente entro 30 minuti da un guasto"

### Manutenibilità (Maintainability)
- Definisce la facilità di manutenzione del sistema
- Deve specificare finestre di manutenzione
- Deve specificare impatto sugli utenti
- Esempi: "La manutenzione programmata non deve superare 2 ore mensili"

### Resilienza (Resilience)
- Definisce la capacità del sistema di adattarsi a condizioni avverse
- Deve specificare scenari di sovraccarico
- Deve specificare degradazione controllata
- Esempi: "Il sistema deve supportare il graceful degradation in caso di picchi di carico"

## Metriche di Affidabilità

Per ogni requisito di affidabilità, utilizzare metriche specifiche:

- **Availability**: Uptime % (es. 99.9% = max 8.76 ore/anno di downtime)
- **MTBF** (Mean Time Between Failures): tempo medio tra guasti
- **MTTR** (Mean Time To Repair): tempo medio per ripristino
- **RTO** (Recovery Time Objective): tempo massimo per ripristino dopo disastro
- **RPO** (Recovery Point Objective): massima perdita di dati tollerabile

## Metodi di Verifica

### Availability Testing
- Monitoraggio continuo dell'uptime
- Registrazione dei periodi di inattività
- Verifica dell'effettiva disponibilità su periodi estesi

### Fault Injection Testing
- Test di resilienza con introduzione deliberata di errori
- Chaos engineering (es. Netflix Chaos Monkey)
- Verifica della degradazione controllata

### Disaster Recovery Testing
- Simulazione di scenari di disastro
- Esecuzione di procedure di ripristino
- Misurazione dei tempi effettivi di recovery

### Stress Testing
- Test di carico oltre i limiti operativi normali
- Verifica dei punti di rottura
- Analisi del comportamento in condizioni di saturazione

## Prioritizzazione

### Critical
- Requisiti senza i quali il sistema può causare danni significativi
- Disponibilità per sistemi mission-critical
- Esempi: disponibilità core, disaster recovery per dati critici

### High
- Requisiti che impattano significativamente la continuità operativa
- Ripristino rapido dalle interruzioni
- Esempi: fault tolerance, failover automatico

### Medium
- Requisiti che migliorano la robustezza
- Gestione migliorata degli errori
- Esempi: degradazione graceful, monitoraggio avanzato

### Low
- Requisiti nice-to-have
- Miglioramenti incrementali
- Esempi: ottimizzazioni di tempi di ripristino già accettabili

## Best Practices

### Do's
- **Definire SLA chiari** con metriche precise
- **Specificare finestre di manutenzione** pianificate
- **Considerare tutti i componenti** nella catena (network, database, servizi esterni)
- **Pianificare disaster recovery** completo
- **Documentare procedure di ripristino** dettagliate

### Don'ts
- **Non promettere 100% di availability** (irrealistico)
- **Non ignorare** i single point of failure
- **Non sottovalutare** il tempo di ripristino effettivo
- **Non dimenticare** il testing regolare dei piani di disaster recovery
- **Non trascurare** la documentazione di procedure di emergenza
