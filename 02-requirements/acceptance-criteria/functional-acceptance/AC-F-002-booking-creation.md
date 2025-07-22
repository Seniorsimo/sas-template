# AC-F-002: Creazione di una Nuova Prenotazione

## 📋 Informazioni Generali
**ID**: AC-F-002
**Requisito Collegato**: REQ-F-003
**User Story Collegata**: US-004
**Feature/Modulo**: Prenotazioni
**Priorità**: Critical
**Status**: Approved
**Assigned to**: QA Team

---

## 📝 Descrizione

### Sommario
Questo criterio verifica che un utente autenticato possa creare con successo una nuova prenotazione per una sala riunioni disponibile.

---

## 🎯 Scenario Principale

### Happy Path
**Given** un utente è autenticato e visualizza il calendario
**And** esiste una fascia oraria libera per una sala riunioni
**When** l'utente seleziona la sala, l'orario di inizio e fine, e conferma la prenotazione
**Then** la nuova prenotazione viene visualizzata correttamente nel calendario
**And** il sistema invia un'email di conferma all'utente.

---

## ❌ Scenari di Errore

### Error Scenario 1: Tentativo di doppia prenotazione
**Given** una sala riunioni è già prenotata dalle 10:00 alle 11:00
**When** un altro utente tenta di prenotare la stessa sala dalle 10:30 alle 11:30
**Then** il sistema restituisce un messaggio di errore "La sala è già occupata in questa fascia oraria"
**And** la seconda prenotazione non viene creata.

### Error Scenario 2: Prenotazione fuori orario
**Given** un utente è autenticato
**When** l'utente tenta di prenotare una sala per le 21:00
**Then** il sistema restituisce un messaggio di errore "Le prenotazioni sono consentite solo tra le 8:00 e le 20:00"
**And** la prenotazione non viene creata.

---

## ✅ Criteri Dettagliati di Accettazione

### Criteri Funzionali
- [x] La prenotazione deve essere salvata correttamente nel database.
- [x] Il calendario deve aggiornarsi in tempo reale per mostrare la nuova prenotazione.
- [x] La notifica email deve contenere i dettagli corretti della prenotazione (sala, data, ora).

---

## 🧪 Test Data Requirements

### Dati di Test Necessari
**Utenti**:
- Due utenti di test validi.
**Dati Master**:
- Almeno due sale riunioni configurate nel sistema.

---

## 🔗 Tracciabilità

### Upstream Traceability
**User Stories**: US-004 - Prenotazione Sala
**Functional Requirements**: REQ-F-003 - Creazione Prenotazione

### Downstream Traceability
**Test Cases**: TC-BOOK-001, TC-BOOK-002, TC-BOOK-003

---

## ✅ Sign-off

### Approvazioni
| Ruolo | Nome | Data | Firma | Status |
|---|---|---|---|---|
| QA Lead | [Nome QA Lead] | 22/07/2024 | (Approved) | Approved |
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) | Approved |
