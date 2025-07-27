# 3.4 Diagrammi di Sequenza

## 3.4.1 Panoramica

[Breve introduzione alle interazioni principali tra componenti del sistema]

Questa sezione descrive le interazioni tra i componenti di [nome del sistema] attraverso diagrammi di sequenza, mostrando lo scambio di messaggi in ordine temporale.

## 3.4.2 Interazione: [Nome Interazione 1]

### Descrizione

[Descrizione dettagliata dello scenario di interazione, contesto e risultato atteso]

### Componenti Coinvolti

- **[Componente1]**: [Ruolo nell'interazione]
- **[Componente2]**: [Ruolo nell'interazione]
- **[Componente3]**: [Ruolo nell'interazione]

### Flusso dei Messaggi

1. **[Messaggio1]**: Da [Componente A] a [Componente B]
   - Parametri: [Descrizione parametri]
   - Risposta: [Descrizione risposta]
   
2. **[Messaggio2]**: Da [Componente B] a [Componente C]
   - Parametri: [Descrizione parametri]
   - Risposta: [Descrizione risposta]

3. **[Messaggio3]**: Da [Componente C] a [Componente B]
   - Parametri: [Descrizione parametri]
   - Risposta: [Descrizione risposta]

### Scenari Alternativi

- **[Condizione Alternativa 1]**: [Descrizione del flusso alternativo]
- **[Condizione Alternativa 2]**: [Descrizione del flusso alternativo]

### Diagramma

[Riferimento al diagramma di sequenza]

### Casi d'Uso Correlati

- [ID Caso d'Uso]: [Nome Caso d'Uso]

## 3.4.3 Interazione: [Nome Interazione 2]

### Descrizione

[Descrizione dettagliata dello scenario di interazione, contesto e risultato atteso]

### Componenti Coinvolti

- **[Componente1]**: [Ruolo nell'interazione]
- **[Componente2]**: [Ruolo nell'interazione]
- **[Componente3]**: [Ruolo nell'interazione]

### Flusso dei Messaggi

1. **[Messaggio1]**: Da [Componente A] a [Componente B]
   - Parametri: [Descrizione parametri]
   - Risposta: [Descrizione risposta]
   
2. **[Messaggio2]**: Da [Componente B] a [Componente C]
   - Parametri: [Descrizione parametri]
   - Risposta: [Descrizione risposta]

### Diagramma

[Riferimento al diagramma di sequenza]

### Casi d'Uso Correlati

- [ID Caso d'Uso]: [Nome Caso d'Uso]

## 3.4.4 Comunicazioni Asincrone

[Descrizione delle interazioni che utilizzano pattern di messaggistica asincrona]

### Interazione: [Nome Interazione Asincrona]

- **Publisher**: [Componente che pubblica]
- **Subscriber**: [Componenti che sottoscrivono]
- **Eventi**: [Tipi di eventi/messaggi scambiati]
- **Modalità di Processing**: [Descrizione di come vengono gestiti i messaggi]

### Diagramma

[Riferimento al diagramma che mostra interazioni asincrone]

## 3.4.5 Gestione Errori

[Descrizione generale dell'approccio alla gestione degli errori nelle interazioni principali]

### Scenari di Errore

- **[Scenario Errore 1]**: [Descrizione dell'errore e della gestione]
- **[Scenario Errore 2]**: [Descrizione dell'errore e della gestione]

### Pattern di Resilienza

[Descrizione dei pattern utilizzati per garantire resilienza nelle comunicazioni]

## 3.4.6 Tracciabilità

| Interazione | Componenti | Casi d'Uso Correlati | Requisiti Implementati |
|-------------|------------|----------------------|------------------------|
| [Nome 1]    | [Elenco]   | [UC-IDs]             | [REQ-IDs]              |
| [Nome 2]    | [Elenco]   | [UC-IDs]             | [REQ-IDs]              |

```plantuml
participant A
participant B

A -> B: create
activate B
B --> A: success
A -> B: process
A -> B: destroy
destroy B
```

### Alternative e Loop

```plantuml
alt condizione true
  A -> B: Messaggio A
else condizione false
  A -> C: Messaggio B
end

loop 5 times
  A -> B: Iterazione
end
```

## Come Utilizzare il Template

### Identifica i Partecipanti

```plantuml
@startuml
actor "Cliente" as C
participant "Web App" as W
participant "API Gateway" as G
participant "User Service" as U
database "User DB" as DB
@enduml
```

### Modella l'Interazione

```plantuml
C -> W: Login Request
activate W
W -> G: POST /auth/login
activate G
G -> U: validateCredentials()
activate U
U -> DB: SELECT user
activate DB
DB --> U: user data
deactivate DB
U --> G: authentication result
deactivate U
G --> W: JWT token
deactivate G
W --> C: Login Success
deactivate W
```

### Gestisci Scenari Alternativi

```plantuml
alt credenziali valide
  U --> G: success + user_data
else credenziali non valide
  U --> G: error: invalid_credentials
else utente bloccato
  U --> G: error: account_locked
end
```

## Pattern Comuni

### Pattern Request-Response Semplice

```plantuml
@startuml
title Pattern Request-Response Base

participant "Client" as C
participant "Server" as S

C -> S: Request
activate S
S --> C: Response
deactivate S
@enduml
```

### Pattern Multi-Layer

```plantuml
@startuml
title Architettura Multi-Layer

actor "User" as U
participant "Presentation" as P
participant "Business" as B
participant "Data Access" as D
database "Database" as DB

U -> P: User Action
activate P
P -> B: Business Request
activate B
B -> D: Data Request
activate D
D -> DB: SQL Query
activate DB
DB --> D: Result Set
deactivate DB
D --> B: Domain Objects
deactivate D
B --> P: Business Response
deactivate B
P --> U: UI Update
deactivate P
@enduml
```

### Pattern Async con Callback

```plantuml
@startuml
title Pattern Asincrono con Callback

participant "Client" as C
participant "Service" as S
participant "Queue" as Q
participant "Worker" as W

C ->> S: Async Request
activate S
S ->> Q: Enqueue Task
S --> C: Request ID
deactivate S

Q ->> W: Process Task
activate W
W -> W: Heavy Processing
W ->> C: Callback Notification
deactivate W
@enduml
```

### Pattern Error Handling

```plantuml
@startuml
title Gestione Errori Completa

participant "Client" as C
participant "API" as A
participant "Service" as S
participant "Logger" as L

C -> A: Request
activate A
A -> S: Process Request
activate S

alt success path
  S --> A: Success Response
  A --> C: 200 OK
else business error
  S --> A: Business Error
  A -> L: Log Error
  A --> C: 400 Bad Request
else system error
  S --> A: System Error
  A -> L: Log Critical Error
  A --> C: 500 Internal Error
end
deactivate S
deactivate A
@enduml
```

### Pattern Microservices

```plantuml
@startuml
title Microservices Communication

actor "User" as U
participant "API Gateway" as G
participant "Auth Service" as A
participant "Order Service" as O
participant "Payment Service" as P
participant "Inventory Service" as I

U -> G: Create Order
activate G

G -> A: Validate Token
activate A
A --> G: User Valid
deactivate A

G -> O: Process Order
activate O

par parallel calls
== Parallel Calls ==
O -> P: Reserve Payment
activate P
O -> I: Check Inventory
activate I
...parallel execution...

alt all services OK
  P --> O: Payment Reserved
  deactivate P
  I --> O: Items Available
  deactivate I
  O --> G: Order Created
else any service fails
  O -> P: Cancel Payment
  O -> I: Release Inventory
  O --> G: Order Failed
end

deactivate O
G --> U: Response
deactivate G
@enduml
```

## Best Practices

### Messaggi e Naming

```plantuml
User -> AuthService: authenticateUser(username, password)
AuthService -> Database: findUserByUsername(username)

User -> System: doStuff()
System -> DB: getData()
```

### Livello di Astrazione

```plantuml
Client -> OrderService: createOrder(orderData)
OrderService -> PaymentService: processPayment(amount)

Client -> Controller: HTTP POST /orders
Controller -> Repository: executeSQL(query)
```

### Gestione Activation

```plantuml
A -> B: request
activate B
B -> C: delegate
activate C
C --> B: result
deactivate C
B --> A: response
deactivate B

```

### Return Messages

```plantuml
A -> B: getData()
activate B
B -> DB: query
activate DB
DB --> B: resultSet
deactivate DB
B --> A: processedData
deactivate B

 ' Implicita per semplicità quando ovvia
A -> B: simpleRequest
B --> A: simpleResponse
```

## Styling e Personalizzazione

### Stereotipi e Colori

```plantuml
!define ACTOR_COLOR #E8F5E8
!define BOUNDARY_COLOR #E3F2FD
!define CONTROL_COLOR #FFF9C4
!define ENTITY_COLOR #FCE4EC
!define DATABASE_COLOR #F3E5F5

participant "User" as U <<actor>> ACTOR_COLOR
participant "UI" as UI <<boundary>> BOUNDARY_COLOR
participant "Controller" as C <<control>> CONTROL_COLOR
participant "Service" as S <<entity>> ENTITY_COLOR
database "DB" as DB DATABASE_COLOR
```

### Grouping e Separatori

```plantuml
== Authentication Phase ==
User -> System: login()

== Business Logic Phase ==
System -> Service: processRequest()

== Data Persistence Phase ==
Service -> Database: saveData()

...

== Cleanup Phase ==
System -> System: cleanup()
```

### Note e Commenti

```plantuml
User -> System: request
note right: Questo messaggio include\nvalidazione dei parametri

System -> Database: query
note over Database: Query ottimizzata\ncon indici appropriati
```

## Esempi per Dominio

### E-commerce: Processo di Checkout

```plantuml
@startuml
title E-commerce - Checkout Process

actor "Customer" as C
participant "Web App" as W
participant "Cart Service" as CS
participant "Payment Service" as PS
participant "Order Service" as OS
participant "Inventory Service" as IS
database "Orders DB" as ODB

C -> W: Proceed to Checkout
activate W

W -> CS: getCartItems(userId)
activate CS
CS --> W: cartItems[]
deactivate CS

W -> W: calculateTotal()
W --> C: Show Checkout Form

C -> W: submitPayment(paymentInfo)
W -> PS: processPayment(amount, paymentInfo)
activate PS

alt payment successful
  PS --> W: paymentConfirmed(transactionId)
  deactivate PS
  
  W -> OS: createOrder(cartItems, transactionId)
  activate OS
  
  loop for each item
    OS -> IS: reserveItem(itemId, quantity)
    activate IS
    IS --> OS: reserved
    deactivate IS
  end
  
  OS -> ODB: saveOrder(orderData)
  activate ODB
  ODB --> OS: orderId
  deactivate ODB
  
  OS --> W: orderCreated(orderId)
  deactivate OS
  
  W -> CS: clearCart(userId)
  activate CS
  CS --> W: cartCleared
  deactivate CS
  
  W --> C: Order Confirmation
  
else payment failed
  PS --> W: paymentFailed(reason)
  deactivate PS
  W --> C: Payment Error
end

deactivate W
@enduml
```

### Sistema Bancario: Trasferimento Fondi

```plantuml
@startuml
title Banking - Fund Transfer

actor "Customer" as C
participant "Banking App" as B
participant "Auth Service" as A
participant "Account Service" as AS
participant "Transaction Service" as TS
participant "Notification Service" as NS
database "Accounts DB" as ADB

C -> B: Transfer Request
activate B

B -> A: validateSession(token)
activate A
A --> B: sessionValid
deactivate A

B -> AS: getAccountBalance(fromAccount)
activate AS
AS -> ADB: SELECT balance FROM accounts
activate ADB
ADB --> AS: currentBalance
deactivate ADB
AS --> B: balance
deactivate AS

alt sufficient funds
  B -> TS: initiateTransfer(fromAccount, toAccount, amount)
  activate TS
  
  TS -> AS: debitAccount(fromAccount, amount)
  activate AS
  AS -> ADB: UPDATE accounts SET balance = balance - amount
  AS --> TS: debitSuccess
  deactivate AS
  
  TS -> AS: creditAccount(toAccount, amount)
  activate AS
  AS -> ADB: UPDATE accounts SET balance = balance + amount
  AS --> TS: creditSuccess
  deactivate AS
  
  TS -> TS: logTransaction()
  TS --> B: transferComplete(transactionId)
  deactivate TS
  
  B -> NS: sendConfirmation(customer, transactionDetails)
  activate NS
  NS --> B: notificationSent
  deactivate NS
  
  B --> C: Transfer Successful
  
else insufficient funds
  B --> C: Insufficient Funds Error
end

deactivate B
@enduml
```

### Sistema IoT: Device Management

```plantuml
@startuml
title IoT Device Management

participant "IoT Device" as D
participant "Edge Gateway" as G
participant "Cloud Platform" as P
participant "Device Manager" as DM
participant "Analytics Service" as AS
database "Time Series DB" as TDB

== Device Registration ==
D -> G: deviceHeartbeat(deviceId, status)
activate G
G -> P: registerDevice(deviceData)
activate P
P -> DM: validateDevice(deviceId)
activate DM
DM --> P: deviceValid
deactivate DM
P --> G: registrationSuccess
deactivate P
G --> D: ackRegistration
deactivate G

== Data Collection ==
loop every 30 seconds
  D ->> G: sensorData(temperature, humidity, timestamp)
  activate G
  G -> G: validateData()
  G ->> P: forwardSensorData(deviceId, data)
  activate P
  P ->> AS: processData(sensorData)
  P -> TDB: storeSensorData(data)
  activate TDB
  TDB --> P: stored
  deactivate TDB
  deactivate P
  deactivate G
end

== Alert Processing ==
AS -> AS: analyzeData()
alt anomaly detected
  AS ->> DM: triggerAlert(deviceId, anomalyType)
  activate DM
  DM ->> P: sendAlert(alertData)
  P ->> G: deviceCommand(deviceId, "investigate")
  G ->> D: executeCommand("investigate")
  deactivate DM
end
@enduml
```

## Sequence vs Altri Diagrammi

### Sequence vs Activity

```yaml
Sequence Diagrams:
  - Focus: Interazioni tra oggetti
  - Asse temporale: Verticale, esplicito
  - Prospettiva: Collaborazione
  - Dettaglio: Messaggi e protocolli

Activity Diagrams:
  - Focus: Workflow e processi
  - Controllo di flusso: Decisioni e parallelismo
  - Prospettiva: Processo business
  - Dettaglio: Attività e stati
```

### Sequence vs Communication

```yaml
Sequence Diagrams:
  - Layout: Verticale, temporale
  - Enfasi: Ordine dei messaggi
  - Complessità: Buono per molti messaggi
  - Use case: Protocolli dettagliati

Communication Diagrams:
  - Layout: Grafo, spaziale
  - Enfasi: Relazioni tra oggetti
  - Complessità: Buono per pochi oggetti
  - Use case: Overview architetturale
```

## Tracciabilità e Documentazione

### Collegamento con Use Cases

```plantuml
title Sequence per Use Case "UC-001: User Login"
note over User, Database: Implementa User Story US-001\nRequisiti: REQ-F-001, REQ-NF-003

User -> System: login(username, password)
```

### Mapping con API Documentation

```plantuml
note right of API: POST /api/v1/auth/login\nContent-Type: application/json\n{\n  "username": "string",\n  "password": "string"\n}

User -> API: login request
API --> User: 200 OK + JWT token
```

### Error Scenario Documentation

```plantuml
== Happy Path ==
User -> System: validRequest()
System --> User: success

== Error Scenarios ==
User -> System: invalidRequest()
System --> User: 400 Bad Request

User -> System: unauthorizedRequest()
System --> User: 401 Unauthorized
```

## Testing dei Sequence Diagrams

### Test Scenario Mapping

```yaml
Sequence: "User Authentication"
Test Cases:
  - TC-001: Valid credentials
  - TC-002: Invalid password
  - TC-003: Non-existent user
  - TC-004: System unavailable
  - TC-005: Database timeout
```

### Mock Objects

```plantuml
participant "Real Client" as C
participant "System Under Test" as S
participant "Mock Database" as MD

C -> S: request
S -> MD: query
note right of MD: Mock returns\npredefined response
MD --> S: mock_data
S --> C: processed_response
```

## Tools e Integration

### PlantUML Advanced Features

```plantuml
' Autonumbering
autonumber

' Reference messages
ref over A, B: Complex Interaction\n(see separate diagram)

' Delay
A -> B: request
...5 minutes later...
B --> A: response

' Space management
|||
A -> B: after space
```

### Integration con IDE

- **VS Code**: PlantUML extension + live preview
- **IntelliJ**: PlantUML plugin + syntax highlighting
- **Eclipse**: PlantUML plugin
- **Vim/Emacs**: PlantUML syntax support

### API Documentation Integration

```yaml
# OpenAPI + PlantUML
paths:
  /api/users:
    post:
      x-sequence-diagram: |
        @startuml
        Client -> API: POST /api/users
        API -> Database: INSERT user
        Database --> API: user_id
        API --> Client: 201 Created
        @enduml
```

## Advanced Patterns

### Saga Pattern (Distributed Transactions)

```plantuml
@startuml
title Saga Pattern - Order Processing

participant "Order Service" as O
participant "Payment Service" as P
participant "Inventory Service" as I
participant "Shipping Service" as S

O -> P: reservePayment()
activate P
P --> O: paymentReserved
deactivate P

O -> I: reserveInventory()
activate I
I --> O: inventoryReserved
deactivate I

O -> S: scheduleShipping()
activate S

alt shipping successful
  S --> O: shippingScheduled
  deactivate S
  O -> P: confirmPayment()
  O -> I: confirmReservation()
else shipping failed
  S --> O: shippingFailed
  deactivate S
  O -> P: cancelPayment()
  O -> I: cancelReservation()
end
@enduml
```

### Circuit Breaker Pattern

```plantuml
@startuml
title Circuit Breaker Pattern

participant "Client" as C
participant "Circuit Breaker" as CB
participant "Service" as S

C -> CB: request
activate CB

alt circuit closed
  CB -> S: forward request
  activate S
  S --> CB: response
  deactivate S
  CB --> C: response
else circuit open
  CB --> C: fallback response
else circuit half-open
  CB -> S: test request
  activate S
  alt service recovered
    S --> CB: success
    deactivate S
    CB -> CB: close circuit
    CB --> C: response
  else service still failing
    S --> CB: failure
    deactivate S
    CB -> CB: open circuit
    CB --> C: fallback response
  end
end
deactivate CB
@enduml
```

## Supporto

Per domande sui Sequence Diagrams:

- **Software Architect**: [Responsabile design interazioni]
- **API Designer**: [Responsabile design interfacce]
- **Integration Specialist**: [Responsabile integrazioni]
- **Technical Lead**: [Responsabile implementazione]

---

*I Sequence Diagrams sono il DNA delle interazioni software. Usali per documentare come i componenti collaborano per realizzare le funzionalità.*
