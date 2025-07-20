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

## Template
Consulta la cartella `templates/` per i template predefiniti di ogni tipo di diagramma.
