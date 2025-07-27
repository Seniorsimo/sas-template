# Istruzioni per i Diagrammi di Sequenza

Questo documento contiene le linee guida e le best practices per la creazione dei diagrammi di sequenza (Sequence Diagrams) all'interno del progetto.

## Scopo dei Diagrammi di Sequenza

I diagrammi di sequenza servono a:
- Modellare interazioni tra oggetti e componenti del sistema
- Rappresentare l'ordine temporale dei messaggi scambiati
- Documentare protocolli di comunicazione e API
- Visualizzare il ciclo di vita degli oggetti
- Illustrare scenari di esecuzione specifici per casi d'uso

## Convenzioni di Modellazione

### Partecipanti

- **Stereotipi**: Utilizzare stereotipi appropriati per i partecipanti
  - `actor`: Per utenti e sistemi esterni
  - `boundary`: Per interfacce e gateway
  - `control`: Per controller e coordinatori
  - `entity`: Per oggetti di dominio e data objects
  - `database`: Per sorgenti dati persistenti
- **Naming**: Nomi significativi in formato PascalCase
- **Ordinamento**: Disporre i partecipanti da sinistra a destra in base al flusso logico dell'interazione

### Lifelines e Attivazioni

- **Attivazioni**: Sempre utilizzare activate/deactivate per mostrare quando un oggetto è in esecuzione
- **Nesting**: Mostrare attivazioni annidate per chiamate in cascata
- **Distruzione**: Utilizzare `destroy` solo per oggetti effettivamente eliminati durante l'interazione

### Messaggi

- **Sincroni**: Utilizzare frecce piene (`->`) per chiamate che bloccano il chiamante
- **Asincroni**: Utilizzare frecce tratteggiate (`->>`) per messaggi che non bloccano
- **Return**: Includere messaggi di ritorno espliciti per operazioni significative
- **Naming**: Includere nome dell'operazione e parametri essenziali
- **Self-call**: Utilizzare messaggi self per operazioni interne rilevanti

## Template e Pattern

### Struttura MVC

```plantuml
actor User
boundary View
control Controller
entity Model
database Database

User -> View: action
View -> Controller: handleAction()
Controller -> Model: getData()
Model -> Database: query()
Model <-- Database: results
Controller <-- Model: data
View <-- Controller: viewModel
User <-- View: display
```

### Pattern Request-Response

```plantuml
participant Client
participant Server

Client -> Server: request
activate Server
Server -> Server: process
Client <-- Server: response
deactivate Server
```

## Frammenti Combinati

- **alt**: Per scenari alternativi basati su condizioni
- **opt**: Per porzioni opzionali condizionate
- **loop**: Per iterazioni
- **par**: Per esecuzione parallela
- **critical**: Per sezioni critiche che richiedono atomicità

Esempio:
```plantuml
alt successful case
  Client -> Server: Request
  Client <-- Server: Success
else error case
  Client -> Server: Request
  Client <-- Server: Error
end
```

## Esempi per Domini Applicativi

### E-commerce

- Scenari: Checkout, Ricerca Prodotti, Gestione Carrello
- Partecipanti: Cliente, WebUI, OrderService, PaymentGateway, InventorySystem

### Banking

- Scenari: Bonifico, Autenticazione, Estratto Conto
- Partecipanti: Cliente, BankingUI, AccountService, TransactionEngine, LedgerSystem

### Healthcare

- Scenari: Prenotazione Visita, Accesso Cartella Clinica
- Partecipanti: Paziente, Medico, AppointmentSystem, PatientRecords, BillingService

## Tracciabilità e Validazione

- Ogni diagramma deve riferirsi a uno specifico caso d'uso (UC-XXX)
- Specificare lo scenario rappresentato (principale o alternativo)
- Verificare la completezza dell'interazione (tutti gli step necessari sono modellati)
- Validare la consistenza con l'architettura del sistema

## Procedura Operativa

1. Identificare il caso d'uso/scenario da rappresentare
2. Determinare i partecipanti coinvolti
3. Definire il flusso principale dei messaggi
4. Aggiungere attivazioni e ritorni appropriati
5. Modellare condizioni e flussi alternativi con frammenti combinati
6. Documentare eventuali vincoli temporali o di sincronizzazione
7. Validare contro requisiti e architettura

## Common Mistakes da Evitare

- Troppi partecipanti in un singolo diagramma (max 6-8)
- Mancanza di attivazioni per tracciare l'esecuzione
- Messaggi sincroni rappresentati come asincroni (e viceversa)
- Flussi di controllo ambigui o incompleti
- Mancanza di gestione degli errori
- Inconsistenza con diagrammi di classe o componenti

## Riferimenti

- UML 2.5 Specification
- Fowler, M. "UML Distilled"
- Larman, C. "Applying UML and Patterns"
