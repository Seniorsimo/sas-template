# US-001: Login Utente

## 📋 Informazioni Generali
**ID**: US-001
**Epic**: Autenticazione Utente
**Priorità**: Alta
**Stima**: 8 Story Points
**Assegnato a**: [Nome Developer]
**Status**: Backlog
**Sprint**: [Numero Sprint]

---

## 👤 User Story

**Come** un dipendente
**Voglio** accedere all'applicazione utilizzando le mie credenziali aziendali
**Per** poter visualizzare la disponibilità delle sale e prenotarle.

### Dettagli Aggiuntivi
L'autenticazione deve essere gestita tramite il sistema di Single Sign-On (SSO) aziendale basato su Keycloak.

---

## ✅ Criteri di Accettazione

### Scenario 1: Login con successo
- **Dato che** un utente non è autenticato
- **Quando** l'utente naviga alla pagina di login e inserisce credenziali valide
- **Allora** l'utente viene reindirizzato alla dashboard principale dell'applicazione e viene visualizzato come autenticato.

### Scenario 2: Tentativo di login con credenziali errate
- **Dato che** un utente non è autenticato
- **Quando** l'utente inserisce credenziali non valide
- **Allora** viene mostrato un messaggio di errore "Credenziali non valide".

### Scenario 3: Accesso a una pagina protetta senza autenticazione
- **Dato che** un utente non è autenticato
- **Quando** l'utente tenta di accedere a una pagina protetta (es. la dashboard)
- **Allora** l'utente viene reindirizzato alla pagina di login.

---

## 🔧 Note Tecniche

### Implementazione
**Componenti coinvolti**:
- **Frontend**: Pagina di Login, Gestore dello stato di autenticazione (es. Redux/Context)
- **Backend**: Endpoint di login, Integrazione con Keycloak

**API Endpoints**:
- `POST /api/auth/login`: Endpoint per avviare il processo di autenticazione con Keycloak.
- `GET /api/auth/callback`: Endpoint di callback per gestire la risposta di Keycloak.

**Business Logic**:
- Al successo del login, il backend deve creare una sessione per l'utente.
- Il token ricevuto da Keycloak deve essere validato.

---

## 🔗 Dipendenze

### Componenti Esterni
- **Keycloak**: Il servizio di autenticazione deve essere raggiungibile e configurato correttamente.

---

## ✅ Definition of Done Checklist

### Development
- [ ] Codice implementato secondo i criteri di accettazione.
- [ ] Unit tests scritti per la logica di login.
- [ ] Code review completata.

### Testing
- [ ] Test di integrazione con Keycloak superati.
- [ ] Test E2E per il flusso di login completato.

### Documentation
- [ ] Documentazione dell'endpoint di login aggiornata.
---

## 📅 Storia della User Story

### Change Log
| Data | Versione | Autore | Cambiamenti |
|---|---|---|---|
| 22/07/2024 | 1.0 | [Nome] | User story creata |
