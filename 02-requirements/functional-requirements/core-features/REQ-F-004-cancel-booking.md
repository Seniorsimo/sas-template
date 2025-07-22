# REQ-F-004: Cancellazione Prenotazione

## 📋 Informazioni Generali
**ID**: REQ-F-004
**Categoria**: Core Feature
**Modulo/Sistema**: Prenotazioni
**Priorità**: Must Have
**Status**: Approved
**Owner**: Product Owner
**Assigned to**: Team di Sviluppo

---

## 📝 Descrizione

### Sommario
Il sistema deve permettere a un utente di cancellare le proprie prenotazioni.

### Descrizione Dettagliata
Un utente deve avere la possibilità di cancellare una prenotazione che ha creato in precedenza. Questa azione renderà la sala nuovamente disponibile per altri. Un utente non può cancellare le prenotazioni effettuate da altri.

### Valore di Business
Aumenta l'efficienza nell'uso delle sale riunioni, permettendo di liberare le risorse quando un meeting viene annullato.

---

## ✅ Criteri di Accettazione

### Scenario Principale
**Given** un utente autenticato che ha una prenotazione attiva
**When** l'utente trova la sua prenotazione e clicca su "Cancella"
**Then** il sistema rimuove la prenotazione e la fascia oraria diventa disponibile nel calendario.

### Scenario di Errore
**Given** un utente autenticato
**When** l'utente tenta di cancellare una prenotazione effettuata da un altro utente
**Then** il sistema restituisce un errore di autorizzazione e la prenotazione non viene cancellata.

---

## 🔧 Specifiche Tecniche

### Input
**Formato**: ID della prenotazione da cancellare.
**Sorgente**: Azione dell'utente sull'interfaccia.

### Processing
**Business Logic**:
- Verificare che l'utente che richiede la cancellazione sia il proprietario della prenotazione.
- Rimuovere la prenotazione dal database.

### Interfacce
**UI Components**: Pulsante "Cancella" nella lista delle prenotazioni o nel dettaglio della prenotazione.
**API Endpoints**: `DELETE /api/bookings/:id`

---

## 🔗 Tracciabilità

### User Stories
- **US-005**: Visualizzazione Mie Prenotazioni
- **US-006**: Cancellazione Prenotazione

---

## 📅 Planning

### Stima Effort
- **Development**: 3 Giorni persona

---

## ✅ Sign-off

### Approvazioni
| Ruolo | Nome | Data | Firma |
|---|---|---|---|
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) |
| Technical Lead | [Nome Team Leader] | 22/07/2024 | (Approved) |
