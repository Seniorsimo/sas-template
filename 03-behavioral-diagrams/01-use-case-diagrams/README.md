# Diagrammi dei Casi d'Uso

## Panoramica

Questa sezione contiene i diagrammi dei casi d'uso (Use Case Diagrams) per il sistema, che illustrano le interazioni tra gli attori (utenti o sistemi esterni) e le funzionalità principali del sistema.

## Diagramma Generale

[Inserire qui il diagramma generale dei casi d'uso, che mostra una visione d'insieme di tutti gli attori e i principali casi d'uso.]

```plantuml
@startuml
left to right direction
actor "Cliente" as customer
actor "Amministratore" as admin

rectangle "Sistema E-commerce" {
  usecase "Visualizza Prodotti" as UC1
  usecase "Effettua Ordine" as UC2
  usecase "Gestisci Prodotti" as UC3
  usecase "Gestisci Ordini" as UC4
}

customer --> UC1
customer --> UC2
admin --> UC3
admin --> UC4
@enduml
```

## Casi d'Uso Dettagliati

Per una descrizione dettagliata di ogni caso d'uso, fare riferimento alla documentazione dei requisiti funzionali nella sezione Requisiti.
