# Risk Register - Registro dei Rischi

## Informazioni Generali
**Progetto**: Meeting Room Booking Application
**Versione**: 1.0
**Data**: 22/07/2024
**Responsabile**: [Nome non definito]

---

## 📊 Risk Matrix - Matrice dei Rischi

### Scala di Probabilità
- **1 - Molto Bassa**: 0-10% di probabilità
- **2 - Bassa**: 11-30% di probabilità
- **3 - Media**: 31-50% di probabilità
- **4 - Alta**: 51-80% di probabilità
- **5 - Molto Alta**: 81-100% di probabilità

### Scala di Impatto
- **1 - Molto Basso**: Impatto minimo su costi, tempi, qualità
- **2 - Basso**: Lieve impatto, facilmente gestibile
- **3 - Medio**: Impatto moderato, richiede attenzione
- **4 - Alto**: Impatto significativo su obiettivi progetto
- **5 - Molto Alto**: Impatto critico, può compromettere il progetto

### Livello di Rischio (Probabilità × Impatto)
- **1-5**: Rischio Basso (Verde)
- **6-12**: Rischio Medio (Giallo)
- **15-25**: Rischio Alto (Rosso)

---

## 🔴 Rischi Alti (15-25)

### RISK-001: Ritardi nello sviluppo
**Categoria**: Organizzativo
**Probabilità**: 3 **Impatto**: 5 **Score**: 15

**Descrizione**: Il progetto potrebbe non essere completato entro la data di go-live a causa di imprevisti tecnici o di una stima non accurata delle tempistiche.

**Cause Potenziali**:
- Complessità tecnica sottovalutata.
- Indisponibilità di membri chiave del team.
- Modifiche ai requisiti durante lo sviluppo.

**Conseguenze**:
- Mancato rispetto della deadline di progetto.
- Aumento dei costi.
- Insoddisfazione degli stakeholder.

**Strategie di Mitigazione**:
- **Prevenzione**: Pianificazione dettagliata delle attività (sprint planning), stime accurate (es. planning poker).
- **Mitigazione**: Monitoraggio costante dello stato di avanzamento (es. burndown chart), comunicazione proattiva con gli stakeholder.
- **Contingency Plan**: Allocazione di un buffer di tempo nel piano di progetto, possibilità di ridurre lo scope della MVP.

**Owner**: Project Manager
**Target Date**: Inizio progetto
**Status**: Aperto

---

## 🟡 Rischi Medi (6-12)

### RISK-002: Problemi di integrazione con Keycloak
**Categoria**: Tecnico
**Probabilità**: 2 **Impatto**: 4 **Score**: 8

**Descrizione**: Potrebbero sorgere difficoltà nell'integrare l'applicazione con il sistema di autenticazione aziendale Keycloak.

**Strategie di Mitigazione**:
- Svolgere un proof-of-concept (PoC) sull'integrazione con Keycloak all'inizio del progetto.
- Documentare chiaramente il processo di integrazione.
- Prevedere sessioni di supporto con il team che gestisce Keycloak.

**Owner**: Team Leader
**Status**: Aperto

### RISK-003: Scarsa adozione da parte degli utenti
**Categoria**: Business
**Probabilità**: 2 **Impatto**: 4 **Score**: 8

**Descrizione**: I dipendenti potrebbero essere restii ad utilizzare la nuova applicazione e continuare a usare i metodi di prenotazione precedenti.

**Strategie di Mitigazione**:
- Coinvolgere gli utenti finali nel processo di sviluppo (es. sessioni di feedback, UAT).
- Pianificare una campagna di comunicazione interna per promuovere i benefici dell'applicazione.
- Organizzare sessioni di training per i dipendenti.

**Owner**: Product Owner
**Status**: Aperto

### RISK-004: Problemi di performance sotto carico
**Categoria**: Tecnico
**Probabilità**: 3 **Impatto**: 4 **Score**: 12

**Descrizione**: L'applicazione potrebbe non essere sufficientemente performante durante i picchi di utilizzo (es. lunedì mattina).

**Strategie di Mitigazione**:
- Eseguire test di carico e stress test prima del go-live.
- Ottimizzare le query al database e il codice backend/frontend.
- Progettare un'architettura scalabile che possa gestire picchi di traffico.

**Owner**: Team Leader
**Status**: Aperto

---

## 🟢 Rischi Bassi (1-5)

### RISK-005: Mancanza di documentazione per le API di Keycloak
**Categoria**: Esterno
**Probabilità**: 2 **Impatto**: 2 **Score**: 4

**Descrizione**: La documentazione delle API di Keycloak potrebbe non essere completa o aggiornata.

**Mitigazione**: Contattare il team di supporto di Keycloak per ottenere la documentazione necessaria.

**Owner**: Team Leader

---

## 📋 Risk Categories - Template per Nuovi Rischi

### Rischi Tecnici
- Problemi di performance o scalabilità
- Complessità tecniche non previste
- Integrazione con sistemi legacy
- Obsolescenza tecnologica
- Sicurezza e vulnerabilità

### Rischi di Business
- Cambiamenti nei requisiti
- Perdita di stakeholder chiave
- Cambiamenti normativi
- Concorrenza
- Budget insufficiente

### Rischi Organizzativi
- Disponibilità delle risorse
- Competenze del team
- Turnover del personale
- Conflitti organizzativi
- Cambiamenti nelle priorità

### Rischi Esterni
- Problemi con fornitori
- Dipendenze da terze parti
- Eventi naturali o forza maggiore
- Cambiamenti del mercato
- Questioni legali

---

## 📊 Risk Summary Dashboard

### Rischi per Categoria
| Categoria | Alto | Medio | Basso | Totale |
|---|---|---|---|---|
| Tecnico | 0 | 2 | 0 | 2 |
| Business | 0 | 1 | 0 | 1 |
| Organizzativo | 1 | 0 | 0 | 1 |
| Esterno | 0 | 0 | 1 | 1 |
| **Totale** | **1** | **3** | **1** | **5** |

### Rischi per Status
- **Aperti**: 5 rischi
- **In Progress**: 0 rischi
- **Chiusi**: 0 rischi
- **Materializzati**: 0 rischi

### Top 5 Rischi (per score)
1. Ritardi nello sviluppo - Score: 15
2. Problemi di performance sotto carico - Score: 12
3. Problemi di integrazione con Keycloak - Score: 8
4. Scarsa adozione da parte degli utenti - Score: 8
5. Mancanza di documentazione per le API di Keycloak - Score: 4

---

## 🔄 Risk Management Process

### 1. Risk Identification
- **Chi**: Tutti i membri del team
- **Quando**: Continuo, con review formali ogni sprint
- **Come**: Brainstorming, lessons learned, expertise

### 2. Risk Assessment
- **Chi**: Risk Owner + Project Manager
- **Quando**: Entro 2 giorni dall'identificazione
- **Come**: Utilizzo della matrice probabilità/impatto

### 3. Risk Response Planning
- **Chi**: Risk Owner
- **Quando**: Entro 5 giorni dall'assessment
- **Strategie**: Avoid, Mitigate, Transfer, Accept

### 4. Risk Monitoring
- **Chi**: Project Manager + Risk Owners
- **Quando**: Review settimanale dei rischi alti, bisettimanale per medi/bassi
- **Reporting**: Dashboard aggiornato e comunicato agli stakeholder

---

## 📞 Escalation e Communication

### Escalation Path
1. **Livello 1**: Project Manager
2. **Livello 2**: Product Owner / Sponsor
3. **Livello 3**: Steering Committee

### Criteri di Escalation
- **Immediata**: Rischi con score ≥ 15
- **Settimanale**: Rischi con score 10-14
- **Mensile**: Tutti gli altri rischi attivi

### Communication Plan
| Audience | Frequency | Content |
|---|---|---|
| Team | Settimanale | Tutti i rischi attivi |
| Stakeholder | Bi-settimanale | Rischi medi e alti |
| Sponsor | Mensile | Risk dashboard e trend |

---

## 📝 Actions Items

### Azioni Immediate (Next 7 days)
- [ ] Svolgere PoC integrazione Keycloak - Owner: Team Leader - Due: [Data]
- [ ] Pianificare sessione di brainstorming sui rischi con il team - Owner: Project Manager - Due: [Data]

### Azioni Pianificate (Next 30 days)
- [ ] Definire piano di test di carico - Owner: Team Leader - Due: [Data]
- [ ] Creare bozza piano di comunicazione per gli utenti - Owner: Product Owner - Due: [Data]

---

## 📋 Risk Review Meeting Minutes

### [Data Meeting]
**Partecipanti**: [Lista partecipanti]

**Rischi Discussi**:
- [Nessun meeting ancora svolto]

**Nuovi Rischi Identificati**:
- [Nessun nuovo rischio identificato]

**Action Items**:
- [Nessuna azione definita]

**Next Meeting**: [Data prossimo meeting]

---

*Ultima modifica: 22/07/2024*
*Prossima review: [Data]*
*Document Owner: [Nome non definito]*
