# AC-F-003: Cancellazione di una Prenotazione

## 📋 Informazioni Generali
**ID**: AC-F-003
**Requisito Collegato**: REQ-F-004
**User Story Collegata**: US-006
**Feature/Modulo**: Prenotazioni
**Priorità**: High
**Status**: Approved
**Assigned to**: QA Team

---

## 📝 Descrizione

### Sommario
Questo criterio verifica che un utente possa cancellare con successo una delle proprie prenotazioni.

---

## 🎯 Scenario Principale

### Happy Path
**Given** un utente ha una prenotazione attiva per una sala riunioni
**When** l'utente naviga alla pagina "Le mie prenotazioni", trova la prenotazione e clicca su "Cancella"
**And** conferma l'azione
**Then** la prenotazione viene rimossa dal sistema
**And** la fascia oraria corrispondente nel calendario principale risulta nuovamente libera.

---

## ❌ Scenari di Errore

### Error Scenario 1: Cancellazione non autorizzata
**Given** l'utente A ha una prenotazione
**And** l'utente B è autenticato
**When** l'utente B tenta di cancellare la prenotazione dell'utente A
**Then** il sistema restituisce un errore 403 Forbidden
**And** la prenotazione dell'utente A non viene cancellata.

---

## ✅ Criteri Dettagliati di Accettazione

### Criteri Funzionali
- [x] La prenotazione deve essere eliminata correttamente dal database.
- [x] Solo il proprietario della prenotazione può cancellarla.
- [x] Il calendario deve aggiornarsi per riflettere la disponibilità della sala.

---

## 🧪 Test Data Requirements

### Dati di Test Necessari
**Utenti**:
- Due utenti di test validi (Utente A, Utente B).
**Dati Master**:
- Una prenotazione esistente creata dall'Utente A.

---

## 🔗 Tracciabilità

### Upstream Traceability
**User Stories**: US-006 - Cancellazione Prenotazione
**Functional Requirements**: REQ-F-004 - Cancellazione Prenotazione

### Downstream Traceability
**Test Cases**: TC-BOOK-004, TC-BOOK-005

---

## ✅ Sign-off

### Approvazioni
| Ruolo | Nome | Data | Firma | Status |
|---|---|---|---|---|
| QA Lead | [Nome QA Lead] | 22/07/2024 | (Approved) | Approved |
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) | Approved |
