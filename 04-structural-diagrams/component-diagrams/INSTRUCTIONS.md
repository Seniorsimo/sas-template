# Istruzioni per Diagrammi dei Componenti

Questa cartella contiene template e linee guida per la creazione di diagrammi dei componenti UML che descrivono l'architettura del sistema a livello di componenti, le loro interfacce e le dipendenze tra di essi.

## Scopo dei Diagrammi dei Componenti

I diagrammi dei componenti servono per:
- Visualizzare l'architettura del sistema a livello di componenti
- Mostrare le dipendenze tra moduli software
- Documentare interfacce e contratti tra componenti
- Pianificare deployment e distribuzione
- Illustrare la struttura modulare del sistema

## Template Disponibile

- `template-component-diagram.puml`: Template base per diagrammi dei componenti con esempi di:
  - Definizione di componenti
  - Interfacce fornite e richieste
  - Dipendenze tra componenti
  - Raggruppamenti e subsistemi

## Elementi del Diagramma

### Componenti

#### Sintassi Base

```plantuml
component "Nome Componente" as ComponentAlias
[Altro Componente]
```

#### Stereotipi

```plantuml
component "<<service>>" as Service
component "<<library>>" as Library  
component "<<database>>" as Database
component "<<external>>" as External
```

### Interfacce

#### Interface Declaration

```plantuml
interface "Nome Interface" as IInterface
() "Interface Symbol" as ISymbol
```

#### Provided/Required Interfaces

```plantuml
component Component1
interface "IService" as IService

Component1 -( IService : provides
Component1 --( IService : requires
```

### Packaging e Organizzazione

```plantuml
package "Package Name" {
  component [Component1]
  component [Component2]
}

node "Server" {
  component [BackendService]
}
```

## Best Practices

### Organizzazione

- Raggruppa componenti correlati in package o nodi
- Mantieni diagrammi leggibili (massimo 10-15 componenti per diagramma)
- Per sistemi complessi, crea diagrammi multipli con diversi livelli di astrazione

### Dettaglio

- Mostra le interfacce chiave tra i componenti
- Evidenzia le dipendenze critiche
- Specifica chiaramente i componenti interni vs esterni
- Usa stereotipi per chiarire il tipo di componente

### Convenzioni di Naming

- **Componenti**: PascalCase o kebab-case
- **Interfacce**: IniziaConI + PascalCase (es. IUserService)
- **Package**: lowercase o kebab-case

## Workflow Consigliato

1. Inizia con i componenti principali del sistema
2. Aggiungi le interfacce tra i componenti
3. Definisci le dipendenze
4. Organizza i componenti in package logici o nodi di deployment
5. Verifica che il diagramma sia coerente con l'architettura generale

## Integrazione con la Documentazione

- Aggiungi riferimenti ai diagrammi dei componenti nella documentazione testuale
- Collega i diagrammi dei componenti ai requisiti non funzionali
- Mantieni consistenza con i diagrammi di deployment
- Documenta le decisioni di design relative all'architettura dei componenti
