# Istruzioni per i Requisiti di Performance

## Definizione

I **Requisiti di Performance** definiscono come il sistema deve comportarsi in termini di tempo di risposta, throughput, utilizzo di risorse e capacità di carico.

## Convenzioni di Naming

- **File**: `REQ-NF-PERF-XXX-[nome-requisito].md` (es. `REQ-NF-PERF-001-response-time.md`)

## Template

Utilizzare il file `REQ-NF-PERF-XXX-template.md` per documentare ogni requisito. Le sezioni principali da compilare sono:

- **Informazioni Generali**: ID, categoria, priorità, status.
- **Descrizione**: Sommario e descrizione dettagliata del requisito.
- **Specifiche Quantitative**: Metriche e valori target per misurare la performance.
- **Criteri di Accettazione**: Scenari per la verifica del requisito.
- **Tracciabilità**: Collegamenti a obiettivi, user stories e altri requisiti.

## Best Practices

- Essere specifici e quantitativi ("il sistema deve essere veloce" non è un requisito).
- Definire le condizioni di misurazione in modo dettagliato (carico, ambiente, etc.).
- Stabilire una baseline di performance per monitorare i miglioramenti e le regressioni.
- Automatizzare i test di performance per una verifica continua.
