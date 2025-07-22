# AC-NF-SEC-001: Verifica Sicurezza Endpoint di Autenticazione

## 📋 Informazioni Generali
**ID**: AC-NF-SEC-001
**Categoria**: Security
**Requisito Collegato**: REQ-NF-SEC-001
**Quality Attribute**: Sicurezza dell'Autenticazione
**Priorità**: Critical
**Status**: Approved
**Assigned to**: Security Team

---

## 📝 Descrizione

### Sommario
Questo criterio verifica che tutti gli endpoint dell'applicazione, ad eccezione di quelli di login, siano accessibili solo con un token di autenticazione valido.

---

## 📊 Metriche e Target

### Metrica Primaria
**Nome Metrica**: Accesso non autorizzato
**Unità di Misura**: Numero di accessi non autorizzati riusciti
**Valore Target**: 0

---

## 🧪 Scenari di Test

### Scenario 1: Accesso a endpoint protetto senza token
**Given** un client non autenticato
**When** il client effettua una richiesta a un endpoint protetto (es. `GET /api/bookings`) senza un token di autenticazione
**Then** il server deve restituire uno stato HTTP 401 Unauthorized.

### Scenario 2: Accesso a endpoint protetto con token invalido
**Given** un client con un token di autenticazione scaduto o manomesso
**When** il client effettua una richiesta a un endpoint protetto
**Then** il server deve restituire uno stato HTTP 401 Unauthorized.

### Scenario 3: Accesso a endpoint protetto con token valido
**Given** un client con un token di autenticazione valido
**When** il client effettua una richiesta a un endpoint protetto
**Then** il server deve processare la richiesta e restituire uno stato HTTP 2xx.

---

## 🔧 Strumenti e Metodologie

### Testing Tools
**Primary Tool**: Postman (o simile, per test manuali), OWASP ZAP (per test automatizzati).

---

## 🔗 Tracciabilità

### Technical Requirements
**Non-Functional Req**: REQ-NF-SEC-001 - Autenticazione Sicura

---

## ✅ Sign-off

### Approvals
| Ruolo | Nome | Data | Firma | Comments |
|---|---|---|---|---|
| Security Engineer | [Nome] | 22/07/2024 | (Approved) | |
| Product Owner | [Nome Product Owner] | 22/07/2024 | (Approved) | |
