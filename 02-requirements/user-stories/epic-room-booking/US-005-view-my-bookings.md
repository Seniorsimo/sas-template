# US-005: Visualizzazione Mie Prenotazioni

## 📋 Informazioni Generali
**ID**: US-005
**Epic**: Prenotazione Sale Riunioni
**Priorità**: Alta
**Stima**: 5 Story Points
**Assegnato a**: [Nome Developer]
**Status**: Backlog
**Sprint**: [Numero Sprint]

---

## 👤 User Story

**Come** un dipendente
**Voglio** visualizzare un elenco di tutte le mie prenotazioni attive
**Per** tenere traccia dei miei prossimi meeting.

---

## ✅ Criteri di Accettazione

### Scenario 1: Visualizzazione delle proprie prenotazioni
- **Dato che** un utente ha effettuato delle prenotazioni
- **Quando** l'utente naviga alla pagina "Le mie prenotazioni"
- **Allora** viene mostrato un elenco di tutte le sue prenotazioni future, ordinate per data.

### Scenario 2: Nessuna prenotazione attiva
- **Dato che** un utente non ha prenotazioni attive
- **Quando** l'utente naviga alla pagina "Le mie prenotazioni"
- **Allora** viene mostrato un messaggio "Non hai prenotazioni attive".

---

## 🔧 Note Tecniche

### Implementazione
**Componenti coinvolti**:
- **Frontend**: Pagina "Le mie prenotazioni", Componente per visualizzare l'elenco delle prenotazioni.
- **Backend**: Endpoint per restituire le prenotazioni di un utente specifico.

**API Endpoints**:
- `GET /api/bookings/my-bookings`: Restituisce le prenotazioni dell'utente autenticato.

---

## 🔗 Dipendenze

### User Stories
- **US-004**: Prenotazione Sala - L'utente deve poter prenotare una sala per poterla visualizzare.

---

## ✅ Definition of Done Checklist

### Development
- [ ] Codice implementato secondo i criteri di accettazione.
- [ ] Unit tests per la logica di recupero delle prenotazioni.
- [ ] Code review completata.

### Testing
- [ ] Test E2E per la visualizzazione delle proprie prenotazioni.

### Documentation
- [ ] Documentazione dell'endpoint API aggiornata.

---

## 📅 Storia della User Story

### Change Log
| Data | Versione | Autore | Cambiamenti |
|---|---|---|---|
| 22/07/2024 | 1.0 | [Nome] | User story creata |
