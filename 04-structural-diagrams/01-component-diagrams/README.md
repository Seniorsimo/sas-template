# Diagrammi dei Componenti

## Panoramica

Questa sezione documenta l'architettura a componenti del sistema, illustrando la decomposizione del sistema in moduli funzionali, le loro interfacce e le relazioni tra di essi.

## Diagramma Generale

[Inserire qui il diagramma generale dei componenti, che mostra una visione d'insieme di tutti i moduli e le loro interfacce.]

```plantuml
@startuml
title Architettura del Sistema

package "Frontend" {
  [Web App]
  [Mobile App]
}

package "Backend" {
  [API Gateway]
  [Servizio Utenti]
  [Servizio Ordini]
}

database "Database" {
  [DB Utenti]
  [DB Ordini]
}

[Web App] --> [API Gateway]
[Mobile App] --> [API Gateway]
[API Gateway] --> [Servizio Utenti]
[API Gateway] --> [Servizio Ordini]
[Servizio Utenti] --> [DB Utenti]
[Servizio Ordini] --> [DB Ordini]
@enduml
```

## Componenti Principali

Per una descrizione dettagliata di ogni componente e delle sue responsabilità, fare riferimento alla documentazione architetturale specifica.
