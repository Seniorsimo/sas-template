# Obiettivi del Progetto

## Informazioni Generali
**Progetto**: Meeting Room Booking Application
**Versione**: 1.0
**Data**: 22/07/2024
**Responsabile**: [Nome non definito]

---

## 🎯 Obiettivi di Business

### Obiettivo Primario
Semplificare e automatizzare il processo di prenotazione delle sale riunioni per ottimizzare l'uso delle risorse e migliorare l'efficienza operativa.

### Obiettivi Secondari
1.  **Riduzione dei conflitti di prenotazione**
    - **Descrizione**: Eliminare le sovrapposizioni di prenotazioni per la stessa sala riunioni.
    - **Metrica**: Numero di conflitti di prenotazione segnalati.
    - **Target**: 0 conflitti al mese.

2.  **Aumento del tasso di utilizzo delle sale riunioni**
    - **Descrizione**: Massimizzare l'occupazione delle sale riunioni disponibili.
    - **Metrica**: Tasso di occupazione medio delle sale.
    - **Target**: Aumento del 20% in 6 mesi.

3.  **Miglioramento della soddisfazione dei dipendenti**
    - **Descrizione**: Fornire un'esperienza utente positiva e ridurre la frustrazione legata alla prenotazione delle sale.
    - **Metrica**: Punteggio medio di soddisfazione utente (sondaggio).
    - **Target**: 4.5 su 5.

---

## 🔧 Obiettivi Tecnici

### Performance
- **Tempo di Risposta**: < 1 secondo per le operazioni di visualizzazione e prenotazione.
- **Throughput**: Gestire almeno 50 richieste simultanee senza degradamento delle performance.
- **Disponibilità**: 99.9% uptime.

### Scalabilità
- **Orizzontale**: L'architettura deve supportare l'aggiunta di nuove istanze per gestire un aumento del carico.
- **Verticale**: L'applicazione deve poter scalare verticalmente in caso di necessità.
- **Storage**: Il database deve essere in grado di gestire la crescita dei dati per almeno 3 anni.

### Sicurezza
- **Autenticazione**: Integrazione con Keycloak per l'autenticazione SSO.
- **Autorizzazione**: Controllo degli accessi basato sui ruoli (es. utente standard, amministratore).
- **Crittografia**: Utilizzo di HTTPS/TLS per tutte le comunicazioni.
- **Compliance**: Conformità al GDPR per la gestione dei dati personali.

### Manutenibilità
- **Code Coverage**: > 85% di copertura dei test unitari e di integrazione.
- **Documentazione**: Documentazione API chiara e completa (Swagger/OpenAPI).
- **Monitoring**: Logging centralizzato (es. ELK stack) e dashboard di monitoraggio (es. Grafana).

---

## 📊 Obiettivi di Qualità

### Usabilità
- **Facilità d'uso**: Un utente deve essere in grado di prenotare una sala in meno di 30 secondi.
- **Accessibilità**: Conformità alle linee guida WCAG 2.1 livello AA.
- **User Experience**: Interfaccia intuitiva e design moderno.

### Affidabilità
- **MTBF** (Mean Time Between Failures): > 1000 ore.
- **MTTR** (Mean Time To Recovery): < 30 minuti.
- **Error Rate**: < 0.5% di richieste con errore.

### Portabilità
- **Browser Support**: Pieno supporto per le ultime due versioni di Chrome, Firefox, Safari e Edge.
- **Dispositivi**: Esperienza ottimale su desktop, tablet e smartphone (design responsive).
- **Sistema Operativo**: L'applicazione deve essere agnostica rispetto al sistema operativo del client.

---

## 📈 Metriche di Successo

### KPI Primari
| Metrica | Baseline | Target | Scadenza |
|---|---|---|---|
| Numero di prenotazioni settimanali | N/A | > 100 | Entro 1 mese dal go-live |
| Tasso di adozione dell'applicazione | 0% | 90% | Entro 3 mesi dal go-live |
| Tempo medio per prenotazione | ~5 min | < 30 sec | Entro 1 mese dal go-live |

### KPI Secondari
- **Numero di cancellazioni**: Monitorare il numero di cancellazioni per identificare possibili problemi.
- **Feedback qualitativo degli utenti**: Raccogliere feedback tramite sondaggi e interviste.
- **Utilizzo delle funzionalità avanzate**: Monitorare l'uso di funzionalità come la prenotazione ricorrente (se implementata).

---

## 🚧 Vincoli e Limitazioni

### Vincoli Tecnici
- Integrazione obbligatoria con il sistema di autenticazione aziendale Keycloak.
- L'infrastruttura di produzione deve essere basata su Docker e Kubernetes.
- Le tecnologie da utilizzare sono React per il frontend e Node.js per il backend.

### Vincoli Temporali
- **Data di Go-Live**: 31/10/2024
- **Milestone Principali**:
    - **Fase di Sviluppo**: 30/09/2024
    - **Fase di Test**: 15/10/2024
    - **Rilascio**: 31/10/2024

### Vincoli di Risorse
- **Budget**: [cifra non definita]
- **Team Size**: 1 Project Manager, 2 Sviluppatori, 1 QA Engineer.
- **Competenze Richieste**: React, Node.js, PostgreSQL, Keycloak, Docker, Kubernetes.

---

## 🔄 Criteri di Accettazione

### Criteri Funzionali
- [ ] Gli utenti possono effettuare il login con le loro credenziali aziendali.
- [ ] Gli utenti possono visualizzare la disponibilità delle sale riunioni in un calendario.
- [ ] Gli utenti possono prenotare una sala per una specifica fascia oraria.
- [ ] Gli utenti possono cancellare le proprie prenotazioni.

### Criteri Non-Funzionali
- [ ] Il tempo di caricamento della pagina principale è inferiore a 2 secondi.
- [ ] L'applicazione è accessibile da dispositivi mobili.
- [ ] I dati degli utenti sono protetti in conformità con il GDPR.

### Criteri di Deployment
- [ ] Il processo di deployment è automatizzato tramite una pipeline CI/CD.
- [ ] Esiste un piano di rollback per ripristinare la versione precedente in caso di problemi.
- [ ] La documentazione di deployment è completa e aggiornata.

---

## 📝 Note e Assunzioni

### Assunzioni
1.  L'infrastruttura IT esistente è in grado di supportare la nuova applicazione.
2.  Le API di Keycloak sono disponibili e documentate.
3.  I dipendenti sono disposti ad adottare un nuovo strumento per la prenotazione delle sale.

### Dipendenze Esterne
- **Servizio Keycloak**: Il corretto funzionamento dell'applicazione dipende dalla disponibilità e dalle performance del servizio di autenticazione.
- **Infrastruttura di Rete**: La connettività di rete deve essere stabile e performante.

### Rischi Identificati
- **Scarsa adozione da parte degli utenti**: [Probabilità: Bassa] - [Impatto: Medio]
- **Problemi di performance sotto carico**: [Probabilità: Media] - [Impatto: Alto]
- **Complessità dell'integrazione con Keycloak**: [Probabilità: Media] - [Impatto: Medio]

---

*Ultima modifica: 22/07/2024*
*Versione documento: 1.0*
