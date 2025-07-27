# Istruzioni per i Diagrammi delle Attività

Questo documento contiene le linee guida e le best practices per la creazione dei diagrammi delle attività (Activity Diagrams) all'interno del progetto.

## Scopo dei Diagrammi di Attività

I diagrammi delle attività servono a:
- Modellare processi business e workflow operativi
- Documentare algoritmi e logica di controllo complessa
- Illustrare flussi di lavoro attraverso diverse entità/sistemi
- Visualizzare parallelismo e sincronizzazione
- Supportare l'analisi dei requisiti funzionali

## Convenzioni di Modellazione

### Struttura di Base

- **Start Point**: Ogni diagramma deve iniziare con un singolo nodo iniziale
- **End Points**: Possono esistere multipli punti di terminazione che rappresentano diversi risultati
- **Activity Nodes**: Devono contenere verbi attivi che descrivono azioni concrete
- **Decision Nodes**: Devono includere condizioni espresse come domande
- **Granularità**: Mantenere un livello di dettaglio consistente all'interno dello stesso diagramma

### Swimlanes

- **Utilizzo**: Sempre consigliato per separare le responsabilità tra attori/sistemi
- **Orientamento**: Preferire verticale per processi con molti attori, orizzontale per pochi attori con processi lunghi
- **Naming**: I nomi delle corsie devono corrispondere ad attori dei casi d'uso o componenti del sistema

### Elementi Avanzati

- **Object Nodes**: Da utilizzare per mostrare oggetti/dati in transizione tra attività
- **Signals**: Per eventi e comunicazioni asincrone tra processi
- **Time Events**: Per attività temporizzate o con timeout
- **Expansion Regions**: Per iterazioni e operazioni su collezioni di elementi

## Template e Pattern

### Pattern di Base

- **Sequenza Lineare**: Per processi semplici e lineari
- **Decisione Binaria/Multipla**: Per flussi condizionali
- **Parallelismo**: Per attività concorrenti
- **Transazione**: Per operazioni che richiedono commit o rollback

### Notazione per Eccezioni

```plantuml
|Sistema|
:Operazione Critica;
note right: Possibile errore
if (Errore?) then (si)
  :Gestione Eccezione;
  :Log Error;
  stop
else (no)
  :Continua Processo;
endif
```

## Esempi per Domini Applicativi

### E-commerce

- Processi: Checkout, Elaborazione Ordine, Gestione Resi
- Attori: Cliente, Sistema Ordini, Sistema Pagamenti, Sistema Magazzino

### Banking

- Processi: Apertura Conto, Bonifico, Approvazione Prestito
- Attori: Cliente, Consulente, Sistema Core Banking, Sistema Compliance

### Healthcare

- Processi: Prenotazione Visita, Triage, Dimissioni
- Attori: Paziente, Medico, Infermiere, Sistema Gestione Ospedaliera

## Tracciabilità e Validazione

- Ogni diagramma di attività deve essere collegato a uno o più casi d'uso (UC-XXX)
- Per processi complessi, inserire riferimenti ai requisiti funzionali implementati
- Verificare la completezza (tutti i percorsi possibili sono modellati)
- Validare la consistenza con gli altri diagrammi comportamentali

## Procedura Operativa

1. Identificare il processo/algoritmo da modellare
2. Determinare gli attori coinvolti e creare le swimlanes
3. Definire punto iniziale e possibili punti finali
4. Delineare il flusso principale (happy path)
5. Aggiungere punti decisionali e flussi alternativi
6. Identificare operazioni parallele e punti di sincronizzazione
7. Documentare condizioni di errore e loro gestione
8. Validare con stakeholder tecnici e business

## Common Mistakes da Evitare

- Diagrammi troppo dettagliati (troppi passi)
- Mancanza di punti decisionali chiari
- Corsie non allineate con responsabilità reali
- Flussi infiniti o senza punti di uscita
- Condizioni di guardia ambigue o mancanti

## Riferimenti

- UML 2.5 Specification
- Business Process Model and Notation (BPMN)
- White, S.A. "Process Modeling Notations and Workflow Patterns"
- Eriksson, H. "UML 2 Toolkit"
