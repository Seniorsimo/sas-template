# Istruzioni per i Requisiti di Integrazione

## Definizione

I **Requisiti di Integrazione** definiscono come il sistema interagisce con sistemi esterni, API di terze parti, servizi cloud e sistemi legacy.

## Convenzioni di Naming

- **File**: `REQ-I-XXX-[nome-integrazione].md` (es. `REQ-I-001-payment-gateway.md`)

## Template

Utilizzare il file `REQ-I-XXX-template.md` per documentare ogni requisito di integrazione. Le sezioni principali da compilare sono:

- **Informazioni Generali**: ID, tipo di integrazione, sistema target, criticità, priorità, status.
- **Descrizione Integrazione**: Sommario, pattern di integrazione e direzione del flusso di dati.
- **Sistemi Coinvolti**: Dettagli sui sistemi sorgente, destinazione e middleware.
- **Specifiche Tecniche**: Dettagli di connessione, formato dei dati e struttura dei messaggi.
- **Data Mapping e Trasformazioni**: Regole di mapping e trasformazione dei dati.
- **Criteri di Accettazione**: Scenari per la verifica dell'integrazione.

## Best Practices

- Implementare meccanismi di retry e circuit breaker per la gestione dei fallimenti.
- Monitorare costantemente lo stato e le performance delle integrazioni.
- Documentare in modo accurato i contratti delle API e i formati dei dati.
- Testare approfonditamente gli scenari di errore e di indisponibilità dei sistemi esterni.
