# Istruzioni per i Diagrammi dei Componenti

## Scopo

I **Diagrammi dei Componenti** servono a visualizzare l'architettura di un sistema a livello di componenti software, mostrando le dipendenze e le interfacce tra di essi.

## Come Utilizzare il Template

1.  **Copia il Template**: Fai una copia del file `template-component-diagram.puml` e rinominalo in modo descrittivo (es. `CMP-ArchitetturaSistema.puml`).
2.  **Definisci i Componenti**: Utilizza la sintassi `[Nome Componente]` per definire i moduli principali del sistema.
3.  **Definisci le Interfacce**: Utilizza la sintassi `interface "Nome Interfaccia"` per definire i punti di contatto tra i componenti.
4.  **Crea le Relazioni**: Collega i componenti e le interfacce per mostrare le dipendenze.

## Convenzioni di Naming

- **File**: `CMP-[NomeArchitettura].puml`
- **Componenti**: Utilizzare `PascalCase` o nomi descrittivi.

## Best Practices

- Raggruppare i componenti in package per rappresentare i layer architetturali.
- Mostrare chiaramente le interfacce fornite e richieste da ogni componente.
- Mantenere i diagrammi focalizzati su un aspetto specifico dell'architettura.
