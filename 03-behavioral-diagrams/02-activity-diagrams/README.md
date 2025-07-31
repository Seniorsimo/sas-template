# Diagrammi delle Attività - [Nome Progetto]

## Panoramica

Questa sezione contiene i diagrammi delle attività (Activity Diagrams) per il sistema, che descrivono i flussi di lavoro e i processi di business.

## Diagramma: [Nome Processo]

[Inserire qui il diagramma di attività per un processo specifico.]

```plantuml
@startuml
title Processo di Gestione Ordine

|#LightBlue|Cliente|
start
:Invia Ordine;

|#LightGreen|Sistema|
:Ricevi Ordine;
if (Ordine Valido?) then (sì)
  :Processa Pagamento;
  :Invia Conferma;
else (no)
  :Notifica Errore;
endif

|#LightBlue|Cliente|
:Ricevi Conferma/Errore;
stop
@enduml
```

## Processi Dettagliati

Per una descrizione dettagliata di ogni processo, fare riferimento alla documentazione dei requisiti funzionali nella sezione `02-requirements`.
