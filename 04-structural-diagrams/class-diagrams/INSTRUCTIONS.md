# Istruzioni per Diagrammi delle Classi

Questa cartella contiene template e linee guida per la creazione di diagrammi delle classi UML che rappresentano la struttura statica del sistema, le relazioni tra classi e il design orientato agli oggetti.

## Scopo dei Diagrammi delle Classi

I diagrammi delle classi servono per:
- Modellare la struttura statica del sistema
- Definire classi, attributi, metodi e le loro visibilità
- Visualizzare le relazioni tra le diverse classi
- Documentare l'architettura object-oriented
- Implementare design patterns e principi SOLID

## Template Disponibile

- `template-class-diagram.puml`: Template base per diagrammi delle classi con esempi di:
  - Definizione classi
  - Relazioni (associazione, aggregazione, composizione, ereditarietà, implementazione)
  - Stereotipi
  - Package e organizzazione

## Elementi del Diagramma

### Classi

#### Sintassi Base

```plantuml
class "Nome Classe" {
  +attributo_pubblico : tipo
  -attributo_privato : tipo
  #attributo_protetto : tipo
  ~attributo_package : tipo
  --
  +metodo_pubblico() : tipo_ritorno
  -metodo_privato() : void
  {abstract} +metodo_astratto()
  {static} +metodo_statico()
}
```

#### Stereotipi

```plantuml
class "<<interface>>" as Interface
class "<<abstract>>" as AbstractClass
class "<<entity>>" as Entity
class "<<service>>" as Service
class "<<repository>>" as Repository
```

### Visibilità

```plantuml
class Example {
  + public_attribute : String
  - private_attribute : int
  # protected_attribute : Date
  ~ package_attribute : boolean
  __
  + public_method() : void
  - private_method() : String
  # protected_method() : int
  ~ package_method() : boolean
}
```

### Relazioni

#### Association (Associazione)

```plantuml
ClassA -- ClassB
ClassA --> ClassB : "navigazione"
ClassA -- ClassB : "ruolo"
```

#### Aggregation (Aggregazione)

```plantuml
ClassA o-- ClassB
ClassA "1" o-- "0..*" ClassB : "contiene"
```

#### Composition (Composizione)

```plantuml
ClassA *-- ClassB
ClassA "1" *-- "1..*" ClassB : "è composto da"
```

#### Inheritance (Ereditarietà)

```plantuml
SubClass --|> SuperClass
ConcreteClass --|> AbstractClass
```

#### Implementation (Implementazione)

```plantuml
ConcreteClass ..|> Interface
```

#### Dependency (Dipendenza)

```plantuml
ClassA ..> ClassB : "usa"
```

## Best Practices

### Organizzazione

- Raggruppa classi correlate in package
- Mantieni diagrammi leggibili (max 10-15 classi)
- Per sistemi complessi, crea diagrammi multipli organizzati per dominio o funzionalità

### Dettaglio

- Includi solo attributi e metodi rilevanti
- Specifica i tipi di dati per gli attributi più importanti
- Mostra sempre la cardinalità nelle associazioni
- Usa note per chiarire elementi complessi

### Convenzioni di Naming

- **Classi**: PascalCase
- **Attributi**: camelCase
- **Metodi**: camelCase()
- **Package**: lowercase o kebab-case

## Workflow Consigliato

1. Inizia con il modello del dominio (domain model) con solo le classi principali e le relazioni
2. Aggiungi dettagli (attributi, metodi, visibilità) gradualmente
3. Organizza le classi in package logici
4. Evidenzia i design patterns implementati
5. Verifica che il diagramma sia coerente con i diagrammi comportamentali

## Integrazione con la Documentazione

- Aggiungi riferimenti ai diagrammi delle classi nella documentazione testuale
- Collega i diagrammi delle classi alle user stories e ai requisiti
- Mantieni consistenza con i diagrammi di sequenza e di attività
- Documenta le decisioni di design relative alla struttura delle classi
