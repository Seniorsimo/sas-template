# Istruzioni per i Diagrammi delle Classi

## Scopo

I **Diagrammi delle Classi** servono a modellare la struttura statica di un sistema, definendo classi, interfacce, attributi, metodi e le relazioni tra di essi.

## Come Utilizzare il Template

1.  **Copia il Template**: Fai una copia del file `template-class-diagram.puml` e rinominalo in modo descrittivo (es. `CD-DominioUtenti.puml`).
2.  **Definisci Classi e Interfacce**: Utilizza la sintassi `class` e `interface` per definire gli elementi del sistema.
3.  **Definisci Attributi e Metodi**: Elenca gli attributi e i metodi con la loro visibilità (`+`, `-`, `#`).
4.  **Crea le Relazioni**: Utilizza le frecce per mostrare le relazioni (associazione, aggregazione, composizione, ereditarietà, implementazione).

## Convenzioni di Naming

- **File**: `CD-[NomeDominio].puml`
- **Classi/Interfacce**: `PascalCase`
- **Attributi/Metodi**: `camelCase`

## Best Practices

- Mantenere i diagrammi focalizzati su un singolo dominio o modulo.
- Utilizzare i package per raggruppare logicamente le classi correlate.
- Specificare la molteplicità nelle relazioni per una maggiore chiarezza.
