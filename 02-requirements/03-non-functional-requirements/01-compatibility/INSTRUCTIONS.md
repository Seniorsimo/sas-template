# Istruzioni per i Requisiti di Compatibilità

## Definizione

I **Requisiti di Compatibilità** definiscono come il sistema deve funzionare su diverse piattaforme (browser, OS, dispositivi), integrarsi con altri sistemi e rispettare standard e protocolli.

## Convenzioni di Naming

- **File**: `REQ-NF-COMP-XXX-[nome-requisito].md` (es. `REQ-NF-COMP-001-browser-support.md`)

## Template

Utilizzare il file `REQ-NF-COMP-XXX-template.md` per documentare ogni requisito. Le sezioni principali da compilare sono:

- **Informazioni Generali**: ID, categoria, priorità, status.
- **Descrizione**: Sommario e descrizione dettagliata del requisito.
- **Specifiche Quantitative**: Metriche e valori target per misurare la compatibilità.
- **Criteri di Accettazione**: Scenari per la verifica del requisito.
- **Tracciabilità**: Collegamenti a obiettivi, user stories e altri requisiti.

## Best Practices

- Specificare le versioni minime supportate per browser, OS e altri sistemi.
- Definire livelli di supporto chiari (es. completo, parziale).
- Considerare i trend di mercato per la scelta delle piattaforme da supportare.
- Pianificare strategie di graceful degradation per le piattaforme non supportate.
