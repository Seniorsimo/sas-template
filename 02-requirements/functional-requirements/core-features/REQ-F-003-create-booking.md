# REQ-F-003: Creazione Prenotazione

## 📋 Informazioni Generali
**ID**: REQ-F-003
**Categoria**: Core Feature
**Modulo/Sistema**: Prenotazioni
**Priorità**: Must Have
**Status**: Approved
**Owner**: Product Owner
**Assigned to**: Team di Sviluppo

---

## 📝 Descrizione

### Sommario
Il sistema deve permettere agli utenti di creare una nuova prenotazione per una sala riunioni.

### Descrizione Dettagliata
Un utente autenticato deve poter selezionare una sala riunioni e una fascia oraria disponibile per creare una nuova prenotazione. Il sistema deve garantire che non ci siano sovrapposizioni e che le prenotazioni avvengano solo negli orari di ufficio consentiti (8:00-20:00, lun-ven).

### Valore di Business
È la funzionalità principale dell'applicazione. Permette di formalizzare l'occupazione di una sala, eliminando le ambiguità e i conflitti del sistema manuale.

---

## ✅ Criteri di Accettazione

### Scenario Principale
**Given** un utente autenticato che ha identificato una fascia oraria libera
**When** l'utente seleziona la sala, l'orario di inizio, l'orario di fine e conferma
**Then** il sistema crea la prenotazione, la visualizza nel calendario e invia una conferma via email.

### Scenario di Errore 1
**Given** un utente che tenta di prenotare una fascia oraria già occupata
**When** l'utente invia la richiesta di prenotazione
**Then** il sistema restituisce un errore e la prenotazione non viene creata.

### Scenario di Errore 2
**Given** un utente che tenta di prenotare al di fuori degli orari consentiti
**When** l'utente invia la richiesta di prenotazione
**Then** il sistema restituisce un errore e la prenotazione non viene creata.

---

## 🔧 Specifiche Tecniche

### Input
**Formato**: Dati della prenotazione (ID sala, data/ora inizio, data/ora fine).
**Sorgente**: Form di prenotazione compilato dall'utente.

### Processing
**Business Logic**:
- Validare che l'orario di fine sia successivo all'orario di inizio.
- Controllare che la fascia oraria sia compresa tra le 8:00 e le 20:00 e non sia nel weekend.
- Verificare l'assenza di sovrapposizioni con altre prenotazioni per la stessa sala (gestione della concorrenza).
- Salvare la nuova prenotazione nel database.
- Inviare una notifica email all'utente.

### Interfacce
**UI Components**: Modulo di prenotazione.
**API Endpoints**: `POST /api/bookings`

---

## 🔗 Tracciabilità

### User Stories
- **US-004**: Prenotazione Sala

---

## 📅 Planning

### Stima Effort
- **Development**: 10 Giorni persona

---

## ✅ Sign-off

### Approvazioni
| Ruolo | Nome | Data | Firma |
|---|---|---|---|
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) |
| Technical Lead | [Nome Team Leader] | 22/07/2024 | (Approved) |
