# Istruzioni per i Requisiti di Performance

Questo documento contiene le linee guida per la compilazione dei requisiti non-funzionali relativi alla performance del sistema.

## Definizione

I requisiti di performance definiscono come il sistema deve comportarsi in termini di:
- Tempo di risposta
- Throughput
- Utilizzo di risorse
- Capacità di carico

## Convenzioni di Naming

### ID Requisiti
Tutti i requisiti di performance devono seguire la convenzione di naming:
- `REQ-NF-PERF-XXX`

Dove XXX è un numero progressivo a tre cifre che inizia da 001.

### File Names
`REQ-NF-PERF-XXX-[nome-breve].md`

**Esempi**:
- `REQ-NF-PERF-001-response-time.md`
- `REQ-NF-PERF-002-throughput.md`
- `REQ-NF-PERF-003-resource-utilization.md`

## Categorie di Performance

### Tempo di Risposta
- Definisce il tempo massimo accettabile per il sistema di rispondere a una richiesta
- Deve specificare il tipo di operazione/richiesta
- Deve specificare condizioni (es. numero utenti concorrenti, volume dati)
- Esempi: "Il tempo di risposta per l'autenticazione utente deve essere inferiore a 1 secondo con 1000 utenti concorrenti"

### Throughput
- Definisce il numero di operazioni che il sistema deve supportare nell'unità di tempo
- Deve specificare il tipo di operazione
- Deve specificare le condizioni e il contesto
- Esempi: "Il sistema deve supportare almeno 100 transazioni al secondo con utenti concorrenti"

### Utilizzo Risorse
- Definisce i limiti di utilizzo delle risorse hardware
- Deve specificare tipo di risorsa (memoria, CPU, storage, rete)
- Deve specificare condizioni operative
- Esempi: "Il sistema non deve utilizzare più del 70% di CPU durante operazioni normali"

### Carico
- Definisce la capacità di gestire contemporaneamente richieste multiple
- Deve specificare numero di utenti/operazioni concorrenti
- Deve specificare condizioni operative
- Esempi: "Il sistema deve supportare 10,000 utenti concorrenti mantenendo i tempi di risposta definiti"

## Metriche e KPI

Per ogni requisito di performance, specificare:

- **KPI primario**: metrica principale per misurare il requisito
- **Valore target**: valore obiettivo da raggiungere
- **Valore minimo accettabile**: soglia di accettazione
- **Condizioni di misurazione**: scenario e contesto

## Metodi di Verifica

### Load Testing
- Test sotto carico normale ed elevato
- Verifica del comportamento con numero di utenti/operazioni crescente
- Strumenti: JMeter, Gatling, k6, LoadRunner

### Stress Testing
- Test oltre i limiti operativi normali
- Verifica del comportamento in condizioni estreme
- Identificazione dei punti di rottura

### Endurance Testing
- Test su lunghi periodi di tempo
- Verifica di memory leak e problemi di stabilità
- Verifica della consistenza delle prestazioni

### Scalability Testing
- Test con risorse crescenti
- Verifica della relazione tra risorse e performance

## Prioritizzazione

### Critical
- Requisiti senza i quali il sistema è inutilizzabile
- Performance che impattano direttamente sul business
- Esempi: tempo risposta per operazioni critiche, throughput minimo per funzionalità core

### High
- Requisiti che impattano significativamente l'utente
- Performance che influenzano l'esperienza utente
- Esempi: tempo di caricamento pagina, risposta UI

### Medium
- Requisiti che migliorano la qualità
- Performance ottimali oltre i requisiti minimi
- Esempi: ottimizzazioni, miglioramenti incrementali

### Low
- Requisiti nice-to-have
- Ottimizzazioni minori
- Esempi: miglioramenti marginali, casi edge

## Best Practices

### Do's
- **Misurare con precisione** con strumenti professionali
- **Specificare condizioni** di misurazione dettagliate
- **Definire baseline** per confronti
- **Considerare casi pessimistici** non solo medi
- **Definire test automatizzati** per verifica continua

### Don'ts
- **Non essere vaghi** ("il sistema deve essere veloce")
- **Non ignorare** le dipendenze esterne
- **Non trascurare** il contesto di deployment
- **Non definire** requisiti irrealistici
- **Non dimenticare** il bilanciamento con altri requisiti
