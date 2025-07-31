# Diagrammi delle Classi

## Panoramica

Questa sezione documenta la struttura statica del sistema attraverso i diagrammi delle classi, illustrando le classi, i loro attributi, metodi e le relazioni tra di esse.

## Modello del Dominio

[Inserire qui il diagramma delle classi che rappresenta il modello del dominio principale.]

```plantuml
@startuml
title Modello del Dominio

class Utente {
  -id: long
  -nome: String
  -email: String
}

class Ordine {
  -id: long
  -data: Date
  -stato: StatoOrdine
}

enum StatoOrdine {
  IN_ATTESA
  SPEDITO
  CONSEGNATO
}

Utente "1" -- "0..*" Ordine
Ordine --> StatoOrdine
@enduml
```

## Dettagli dei Package

Per una visione più dettagliata delle classi all'interno di specifici package o moduli, fare riferimento ai diagrammi dedicati.
