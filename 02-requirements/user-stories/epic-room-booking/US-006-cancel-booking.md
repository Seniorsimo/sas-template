# US-006: Cancellazione Prenotazione

## 📋 Informazioni Generali
**ID**: US-006
**Epic**: Prenotazione Sale Riunioni
**Priorità**: Alta
**Stima**: 5 Story Points
**Assegnato a**: [Nome Developer]
**Status**: Backlog
**Sprint**: [Numero Sprint]

---

## 👤 User Story

**Come** un dipendente
**Voglio** poter cancellare una mia prenotazione
**Per** liberare la sala nel caso in cui il mio meeting venga annullato.

---

## ✅ Criteri di Accettazione

### Scenario 1: Cancellazione con successo
- **Dato che** un utente ha una prenotazione attiva
- **Quando** l'utente clicca sul pulsante "Cancella" relativo a una sua prenotazione e conferma l'azione
- **Allora** la prenotazione viene rimossa dal sistema.
- **E** la fascia oraria corrispondente nel calendario risulta libera.

### Scenario 2: Tentativo di cancellare la prenotazione di un altro utente
- **Dato che** un utente sta visualizzando le prenotazioni
- **Quando** l'utente tenta di cancellare una prenotazione non sua
- **Allora** il sistema impedisce l'azione e mostra un messaggio di errore "Non autorizzato".

---

## 🔧 Note Tecniche

### Implementazione
**Componenti coinvolti**:
- **Frontend**: Pulsante di cancellazione, Modale di conferma.
- **Backend**: Endpoint per la cancellazione di una prenotazione.

**API Endpoints**:
- `DELETE /api/bookings/:id`: Cancella la prenotazione con l'ID specificato.

**Business Logic**:
- Il backend deve verificare che l'utente che richiede la cancellazione sia il proprietario della prenotazione.

---

## 🔗 Dipendenze

### User Stories
- **US-005**: Visualizzazione Mie Prenotazioni - L'utente deve poter vedere le sue prenotazioni per poterle cancellare.

---

## ✅ Definition of Done Checklist

### Development
- [ ] Codice implementato secondo i criteri di accettazione.
- [ ] Unit tests per la logica di cancellazione.
- [ ] Code review completata.

### Testing
- [ ] Test di integrazione per la cancellazione di prenotazioni.
- [ ] Test E2E per il flusso di cancellazione.

### Documentation
- [ ] Documentazione dell'endpoint API aggiornata.

---

## 📅 Storia della User Story

### Change Log
| Data | Versione | Autore | Cambiamenti |
|---|---|---|---|
| 22/07/2024 | 1.0 | [Nome] | User story creata |
