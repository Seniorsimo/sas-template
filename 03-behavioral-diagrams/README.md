# Diagrammi Comportamentali

Questa sezione contiene tutti i diagrammi UML che descrivono il comportamento del sistema.

## Struttura

### use-case-diagrams/
Diagrammi dei casi d'uso che mostrano:
- Attori del sistema
- Casi d'uso principali
- Relazioni tra attori e casi d'uso
- Boundary del sistema

### activity-diagrams/
Diagrammi delle attività che descrivono:
- Flussi di lavoro
- Processi business
- Logica di controllo
- Parallelismo e sincronizzazione

### sequence-diagrams/
Diagrammi di sequenza che mostrano:
- Interazioni tra oggetti
- Ordine temporale dei messaggi
- Ciclo di vita degli oggetti
- Collaborazioni tra componenti

## Convenzioni

### Naming
- File: `[nome-descrittivo].puml` o `[nome-descrittivo].mmd`
- Diagrammi: Titoli chiari e descrittivi
- Elementi: Nomi consistenti con il dominio

### Strumenti
- **PlantUML**: Per diagrammi UML formali
- **Mermaid**: Per diagrammi rapidi e semplici
- **Draw.io**: Per diagrammi visuali complessi

### Tracciabilità
Ogni diagramma deve:
- Referenziare le user stories correlate
- Includere una descrizione del scopo
- Mantenere consistenza con altri diagrammi

## Workflow Consigliato
1. **Use Case**: Parti dai casi d'uso di alto livello
2. **Activity**: Dettaglio dei processi interni
3. **Sequence**: Interazioni specifiche tra componenti

## Template e Documentazione
Ogni sottocartella contiene:
- **Template PlantUML**: File `.puml` pronti per l'uso
- **README.md**: Guida completa all'utilizzo dei template
- **Best Practices**: Convenzioni e standards per ogni tipo di diagramma

### Come Iniziare
1. Scegli il tipo di diagramma più appropriato per il tuo caso d'uso
2. Leggi il README della sottocartella per le linee guida specifiche  
3. Copia e personalizza il template fornito
4. Segui le convenzioni di naming e tracciabilità
