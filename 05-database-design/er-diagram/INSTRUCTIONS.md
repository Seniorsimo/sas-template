# Istruzioni per i Diagrammi Entity-Relationship (ER)

Questa cartella contiene i template per i diagrammi Entity-Relationship del progetto. Questi diagrammi rappresentano il modello concettuale e logico dei dati del sistema.

## Uso dei Template

- Utilizzare il file `template-er-diagram.puml` come base per i diagrammi ER
- Seguire la sintassi PlantUML per definire entità, attributi e relazioni
- Creare diagrammi separati per diversi domini o sottosistemi se necessario

## Convenzioni di Nomenclatura

### File

- Nominare i file secondo il pattern: `er-[domain]-[context].puml`
- Esempi:
  - `er-ecommerce-order-management.puml`
  - `er-banking-account-system.puml`
  - `er-healthcare-patient-records.puml`

### Entità

- Usare nomi al singolare in PascalCase (es. `Customer`, `Product`, `Order`)
- Aggiungere suffissi significativi quando necessario (es. `PaymentMethod`, `UserProfile`)
- Evitare abbreviazioni ambigue

### Attributi

- Usare camelCase per tutti gli attributi (es. `firstName`, `productId`, `orderDate`)
- Prefissare gli ID con il nome dell'entità (es. `customerId`, `productId`)
- Usare nomi completi anziché abbreviazioni

### Relazioni

- Usare verbi o frasi verbali che descrivono la relazione (es. "places", "belongs to")
- Specificare la direzione della relazione quando non ovvia
- Includere ruoli quando necessario per chiarire la semantica

## Sintassi PlantUML per Diagrammi ER

### Definizione Entità

```plantuml
entity "Nome Entità" as EntityAlias {
  * primary_key : TYPE
  --
  * required_attribute : TYPE
  optional_attribute : TYPE
  calculated_attribute : TYPE <<computed>>
}
```

### Marcatura degli Attributi

- `*` = Attributo obbligatorio (NOT NULL)
- `<<FK>>` = Foreign Key
- `<<PK>>` = Primary Key
- `<<UK>>` = Unique Key
- `<<computed>>` = Attributo calcolato
- `<<derived>>` = Attributo derivato

### Definizione Relazioni

```plantuml
' One-to-One (1:1)
EntityA ||--|| EntityB : "relationship"

' One-to-Many (1:N)
EntityA ||--o{ EntityB : "relationship"

' Many-to-Many (N:M)
EntityA }o--o{ EntityB : "relationship"

' Optional relationships
EntityA |o--o{ EntityB : "relationship"
```

## Best Practices

- Dividere i diagrammi complessi in più diagrammi più piccoli e focalizzati
- Usare colori e stili coerenti per migliorare la leggibilità
- Aggiungere commenti esplicativi per chiarire scelte di design
- Includere leggende per notazioni personalizzate
- Organizzare visivamente il layout per ridurre l'incrocio di linee

## Livelli di Dettaglio

### Diagramma ER Concettuale

- Focus su entità e relazioni principali
- Attributi limitati a quelli essenziali
- Utilizzare per la comunicazione con stakeholder non tecnici

### Diagramma ER Logico

- Include tutti gli attributi
- Specifica tipi di dati
- Definisce chiavi primarie e foreign keys
- Mostra vincoli di integrità

## Collegamento con Altri Artefatti

- Referenziare i requisiti che hanno portato alla creazione delle entità
- Collegare le entità con le classi del domain model quando applicabile
- Documentare le operazioni CRUD associate alle entità nei casi d'uso

---

## Esempi per Dominio

### E-commerce

```plantuml
@startuml E-commerce Example
entity Customer {
  * customerId : UUID <<PK>>
  --
  * firstName : VARCHAR(50)
  * lastName : VARCHAR(50)
  * email : VARCHAR(100) <<UK>>
  phoneNumber : VARCHAR(20)
  createdAt : TIMESTAMP
}

entity Order {
  * orderId : UUID <<PK>>
  --
  * customerId : UUID <<FK>>
  * orderDate : TIMESTAMP
  * status : VARCHAR(20)
  totalAmount : DECIMAL(10,2)
  shippingAddress : TEXT
}
```

### Banking

```plantuml
@startuml Banking Example
entity Customer {
  * customerId : UUID <<PK>>
  --
  * firstName : VARCHAR(50)
  * lastName : VARCHAR(50)
  * taxId : VARCHAR(20) <<UK>>
  dateOfBirth : DATE
  address : TEXT
}

entity Account {
  * accountId : UUID <<PK>>
  --
  * customerId : UUID <<FK>>
  * accountNumber : VARCHAR(20) <<UK>>
  * type : VARCHAR(20)
  balance : DECIMAL(15,2)
  openDate : DATE
  status : VARCHAR(10)
}

entity Transaction {
  * transactionId : UUID <<PK>>
  --
  * accountId : UUID <<FK>>
  * transactionDate : TIMESTAMP
  * amount : DECIMAL(15,2)
  * type : VARCHAR(20)
  description : VARCHAR(200)
}

Customer ||--o{ Account : owns
Account ||--o{ Transaction : contains

@enduml
```

### Healthcare

```plantuml
@startuml Healthcare Example
entity Patient {
  * patientId : UUID <<PK>>
  --
  * firstName : VARCHAR(50)
  * lastName : VARCHAR(50)
  * dateOfBirth : DATE
  gender : VARCHAR(10)
  contactPhone : VARCHAR(20)
  bloodType : VARCHAR(5)
}

entity Practitioner {
  * practitionerId : UUID <<PK>>
  --
  * firstName : VARCHAR(50)
  * lastName : VARCHAR(50)
  * specialization : VARCHAR(100)
  licenseNumber : VARCHAR(50)
  contactEmail : VARCHAR(100)
}

entity Appointment {
  * appointmentId : UUID <<PK>>
  --
  * patientId : UUID <<FK>>
  * practitionerId : UUID <<FK>>
  * dateTime : TIMESTAMP
  * duration : INT
  status : VARCHAR(20)
  notes : TEXT
}

Patient ||--o{ Appointment : schedules
Practitioner ||--o{ Appointment : conducts

@enduml
```
