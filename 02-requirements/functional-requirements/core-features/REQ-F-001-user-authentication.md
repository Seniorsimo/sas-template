# REQ-F-001: Autenticazione Utente

## 📋 Informazioni Generali
**ID**: REQ-F-001
**Categoria**: Core Feature
**Modulo/Sistema**: Autenticazione
**Priorità**: Must Have
**Status**: Approved
**Owner**: Product Owner
**Assigned to**: Team di Sviluppo

---

## 📝 Descrizione

### Sommario
Il sistema deve permettere agli utenti di autenticarsi utilizzando le loro credenziali aziendali tramite Keycloak.

### Descrizione Dettagliata
Per poter accedere alle funzionalità dell'applicazione, un utente deve prima essere autenticato. Il processo di autenticazione deve essere delegato al sistema di Single Sign-On (SSO) aziendale, basato su Keycloak. L'applicazione non deve memorizzare le password degli utenti.

### Valore di Business
Garantisce la sicurezza dell'applicazione, assicurando che solo i dipendenti autorizzati possano accedere e prenotare le sale riunioni. Semplifica l'accesso per gli utenti, che possono utilizzare le loro credenziali esistenti.

---

## ✅ Criteri di Accettazione

### Scenario Principale
**Given** un utente non autenticato che visita l'applicazione
**When** l'utente clicca sul pulsante "Login"
**Then** l'utente viene reindirizzato alla pagina di login di Keycloak.
**And** dopo aver inserito credenziali valide, viene reindirizzato all'applicazione come utente autenticato.

### Scenario di Errore
**Given** un utente che inserisce credenziali errate su Keycloak
**When** l'utente prova a fare il login
**Then** Keycloak mostra un messaggio di errore e l'utente non viene autenticato nell'applicazione.

---

## 🔧 Specifiche Tecniche

### Input
**Sorgente**: Dati dell'utente forniti da Keycloak dopo un'autenticazione riuscita (es. token JWT).

### Processing
**Business Logic**:
- L'applicazione deve validare il token JWT ricevuto da Keycloak.
- L'applicazione deve creare una sessione utente basata sulle informazioni del token.

### Interfacce
**API Endpoints**:
- `/api/auth/login`: Inizia il flusso di autenticazione OIDC con Keycloak.
- `/api/auth/callback`: Gestisce la risposta di Keycloak dopo l'autenticazione.
- `/api/auth/logout`: Termina la sessione utente.

---

## 🔗 Tracciabilità

### User Stories
- **US-001**: Login Utente
- **US-002**: Logout Utente

---

## 📅 Planning

### Stima Effort
- **Development**: 5 Giorni persona

---

## ✅ Sign-off

### Approvazioni
| Ruolo | Nome | Data | Firma |
|---|---|---|---|
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) |
| Technical Lead | [Nome Team Leader] | 22/07/2024 | (Approved) |
