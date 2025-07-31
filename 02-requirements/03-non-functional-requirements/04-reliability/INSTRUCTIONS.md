# Istruzioni per i Requisiti di Affidabilità

## Definizione

I **Requisiti di Affidabilità** definiscono come il sistema deve mantenersi disponibile, recuperare da guasti e funzionare senza errori.

## Convenzioni di Naming

- **File**: `REQ-NF-REL-XXX-[nome-requisito].md` (es. `REQ-NF-REL-001-availability.md`)

## Template

Utilizzare il file `REQ-NF-REL-XXX-template.md` per documentare ogni requisito. Le sezioni principali da compilare sono:

- **Informazioni Generali**: ID, categoria, priorità, status.
- **Descrizione**: Sommario e descrizione dettagliata del requisito.
- **Specifiche Quantitative**: Metriche e valori target per misurare l'affidabilità (es. uptime, MTTR, RTO).
- **Criteri di Accettazione**: Scenari per la verifica del requisito.
- **Tracciabilità**: Collegamenti a obiettivi, user stories e altri requisiti.

## Best Practices

- Definire SLA (Service Level Agreements) chiari e misurabili.
- Progettare l'architettura per la ridondanza e il failover.
- Pianificare e testare regolarmente i piani di disaster recovery.
- Implementare un monitoraggio proattivo per prevenire i guasti.
