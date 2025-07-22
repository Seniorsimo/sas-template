# Scope del Progetto

## Informazioni Generali
**Progetto**: Meeting Room Booking Application
**Versione**: 1.0
**Data**: 22/07/2024
**Responsabile**: [Nome non definito]

---

## 🎯 Scope Statement

### Obiettivo del Progetto
L'obiettivo di questo progetto è sviluppare un'applicazione web per la prenotazione delle sale riunioni che consenta ai dipendenti di visualizzare la disponibilità delle sale e prenotarle in modo efficiente.

### Giustificazione del Progetto
Il processo attuale di prenotazione manuale è inefficiente, soggetto a errori e causa frustrazione tra i dipendenti. Un'applicazione dedicata migliorerà la produttività e ottimizzerà l'uso delle risorse aziendali.

---

## ✅ In Scope (Cosa SARÀ incluso)

### Funzionalità Principali
1.  **Autenticazione Utente**
    - Gli utenti potranno accedere tramite le loro credenziali aziendali (integrazione con Keycloak).
    - Il sistema gestirà sessioni utente sicure.

2.  **Visualizzazione Disponibilità Sale**
    - Un calendario mostrerà le prenotazioni per ogni sala riunioni.
    - Gli utenti potranno filtrare per data e orario.

3.  **Prenotazione Sala Riunioni**
    - Gli utenti potranno selezionare una sala e una fascia oraria disponibile.
    - Le prenotazioni sono consentite dalle 8:00 alle 20:00, dal lunedì al venerdì.
    - Il sistema invierà una notifica di conferma via email.

4.  **Gestione delle Proprie Prenotazioni**
    - Gli utenti potranno visualizzare un elenco delle loro prenotazioni attive.
    - Gli utenti potranno cancellare le proprie prenotazioni.

### Moduli/Componenti Inclusi
- **Frontend**: Interfaccia utente basata su React.
- **Backend**: API RESTful basate su Node.js.
- **Database**: Schema del database in PostgreSQL.
- **Modulo di Notifica**: Servizio per l'invio di email di conferma.

### Integrazioni Incluse
- **Keycloak**: Per l'autenticazione e l'autorizzazione degli utenti.
- **Servizio Email SMTP**: Per l'invio di notifiche.

### Deliverables
- [x] **Applicazione Software**: Applicazione web funzionante e deployata.
- [x] **Documentazione Tecnica**: Documentazione delle API (Swagger/OpenAPI), diagrammi di architettura.
- [x] **Documentazione Utente**: Guida rapida per gli utenti finali.
- [x] **Piano di Deployment**: Pipeline CI/CD per il deployment automatizzato.
- [ ] **Piano di Training**: Sessione di formazione per i dipendenti.
- [x] **Piano di Supporto**: Documentazione per il team di supporto IT.

---

## ❌ Out of Scope (Cosa NON sarà incluso)

### Funzionalità Escluse
1.  **Prenotazioni Ricorrenti**
    - **Motivo esclusione**: Complessità aggiuntiva, non prioritaria per la MVP.
    - **Possibile inclusione futura**: Sì, in una versione successiva.

2.  **Gestione Catering e Attrezzature**
    - **Motivo esclusione**: Fuori dallo scope principale della prenotazione della sala.
    - **Possibile inclusione futura**: Sì, come modulo aggiuntivo.

3.  **Approvazione delle Prenotazioni**
    - **Motivo esclusione**: Il requisito è "chi prima arriva, meglio alloggia", quindi non è necessario un flusso di approvazione.
    - **Possibile inclusione futura**: No.

### Sistemi/Piattaforme Non Supportate
- **Internet Explorer 11**: Browser obsoleto e non supportato.
- **Applicazioni mobile native (iOS/Android)**: L'applicazione sarà accessibile tramite browser mobile (responsive design).

### Servizi Non Inclusi
- **Migrazione di dati da sistemi precedenti**: Non esistono sistemi di prenotazione precedenti.
- **Supporto 24/7**: Il supporto sarà fornito durante l'orario di ufficio.

---

## 🏁 Criteri di Successo

### Criteri di Completamento
- [x] Tutte le funzionalità in scope sono implementate e testate.
- [x] I test di accettazione utente (UAT) sono superati con successo.
- [x] La documentazione è completa e approvata.
- [x] Il sistema è deployato in produzione e stabile.

### Criteri di Qualità
- **Performance**: Tempo di risposta medio < 1 secondo per le azioni principali.
- **Sicurezza**: Nessuna vulnerabilità critica o alta identificata durante i test di sicurezza.
- **Usabilità**: Tasso di successo nel completamento del task di prenotazione > 95%.
- **Affidabilità**: Uptime del servizio > 99.9%.

---

## 📋 Assumptions (Assunzioni)

### Assunzioni Tecniche
- Le API di Keycloak sono stabili e disponibili per l'integrazione.
- L'infrastruttura di produzione (Kubernetes) è correttamente configurata e disponibile.
- Il servizio SMTP per l'invio di email è affidabile.

### Assunzioni di Business
- Il budget allocato è sufficiente per completare il progetto.
- Le priorità di business non cambieranno drasticamente durante lo sviluppo.
- Il management supporterà l'adozione del nuovo strumento.

### Assunzioni sugli Utenti
- I dipendenti hanno le competenze informatiche di base per utilizzare un'applicazione web.
- I dipendenti sono disposti a seguire le nuove procedure di prenotazione.

---

## ⚠️ Constraints (Vincoli)

### Vincoli Tecnici
- **Tecnologie**: Il frontend deve essere sviluppato in React, il backend in Node.js.
- **Piattaforme**: L'applicazione deve essere compatibile con le ultime due versioni di Chrome, Firefox, Edge e Safari.
- **Sicurezza**: L'autenticazione deve essere gestita esclusivamente tramite Keycloak.

### Vincoli di Tempo
- **Go-Live Date**: 31/10/2024.
- **Milestone Intermedie**: Definite nel piano di progetto.

### Vincoli di Budget
- **Budget Totale**: [cifra non definita].

### Vincoli Organizzativi
- Il team di sviluppo è composto da 4 persone.
- Le decisioni sui requisiti devono essere approvate dal Product Owner.

---

## 📊 Work Breakdown Structure (WBS) - Alto Livello

### 1. Project Management
- 1.1 Project Planning
- 1.2 Project Monitoring & Control
- 1.3 Project Closure

### 2. Requirements & Analysis
- 2.1 Requirements Gathering
- 2.2 Analysis & Design
- 2.3 Requirements Validation

### 3. Development
- 3.1 Frontend Development (React)
- 3.2 Backend Development (Node.js)
- 3.3 Database Design & Implementation (PostgreSQL)
- 3.4 Keycloak Integration

### 4. Testing
- 4.1 Unit Testing
- 4.2 Integration Testing
- 4.3 System Testing
- 4.4 User Acceptance Testing (UAT)

### 5. Deployment
- 5.1 Environment Preparation
- 5.2 CI/CD Pipeline Setup
- 5.3 Go-Live Support

### 6. Documentation & Training
- 6.1 Technical Documentation
- 6.2 User Documentation
- 6.3 Training Delivery

---

## 🔄 Change Management

### Change Control Process
1.  **Change Request Submission**: Le richieste di modifica devono essere documentate e inviate al Product Owner.
2.  **Impact Analysis**: Il team di sviluppo valuta l'impatto della modifica.
3.  **Change Approval**: Il Product Owner approva o respinge la modifica.
4.  **Implementation**: Le modifiche approvate vengono inserite nel backlog di sviluppo.
5.  **Communication**: Le decisioni vengono comunicate a tutti gli stakeholder.

### Change Control Board
- **Chair**: Product Owner
- **Members**: Team Leader, Rappresentante degli utenti
- **Meeting Frequency**: Su richiesta

---

## 📝 Sign-off e Approvazioni

### Stakeholder che devono approvare questo documento:

| Nome | Ruolo | Data Approvazione | Firma |
|---|---|---|---|
| [Nome Product Owner] | Product Owner | _____________ | _____________ |
| [Nome Team Leader] | Team Leader | _____________ | _____________ |

### Storia delle Revisioni

| Versione | Data | Autore | Cambiamenti |
|---|---|---|---|
| 1.0 | 22/07/2024 | [Nome] | Versione iniziale |

---

*Questo documento rappresenta l'accordo formale sullo scope del progetto.*
*Qualsiasi modifica deve essere approvata attraverso il processo di change control.*
