# Diagrammi di Sequenza - [Nome Progetto]

## Panoramica

Questa sezione contiene i diagrammi di sequenza (Sequence Diagrams) per il sistema, che illustrano le interazioni tra i componenti del sistema nel tempo.

## Diagramma: [Nome Interazione]

[Inserire qui il diagramma di sequenza per un'interazione specifica.]

```plantuml
@startuml
title Interazione Login Utente

actor "Utente" as User
participant "Frontend" as FE
participant "Backend" as BE
database "Database" as DB

User -> FE: Inserisce credenziali e clicca Login
activate FE

FE -> BE: POST /api/login
activate BE

BE -> DB: SELECT user WHERE email = ...
activate DB
DB --> BE: Dati utente
deactivate DB

BE --> FE: { token: "..." }
deactivate BE

FE --> User: Reindirizza alla Dashboard
deactivate FE
@enduml
```

## Interazioni Dettagliate

Per una descrizione dettagliata di ogni interazione, fare riferimento alla documentazione dei requisiti funzionali e dei casi d'uso nelle sezioni precedenti.
