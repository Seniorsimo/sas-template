# Istruzioni per la Definizione del Progetto

Questa cartella contiene 5 template files già strutturati per la definizione del progetto. L'obiettivo è compilare questi template esistenti con le informazioni specifiche del progetto, creando una base solida e coerente.

## Template Files Disponibili per la Compilazione

### 1. `01-project-description.md`

**Template già presente** - da compilare sostituendo i placeholder con:
- **Panoramica Generale**: Descrizione del progetto e problema che risolve
- **Contesto di Business**: Contesto di mercato/aziendale
- **Problema Attuale**: Descrizione dettagliata dei problemi da risolvere
- **Soluzione Proposta**: Visione della soluzione e funzionalità principali
- **Valore e Benefici**: Benefici per business e utenti finali
- **Stack Tecnologico**: Tecnologie proposte

### 2. `02-objectives.md`

**Template già presente** - da compilare con obiettivi SMART:
- **Obiettivi di Business**: Target misurabili per business value
- **Obiettivi Tecnici**: Performance, scalabilità, sicurezza, manutenibilità
- **Obiettivi di Qualità**: Usabilità, affidabilità, portabilità

### 3. `03-project-scope.md`

**Template già presente** - il documento più critico da compilare accuratamente:
- **In Scope**: Funzionalità incluse con criteri di accettazione
- **Out of Scope**: Funzionalità esplicitamente escluse
- **Deliverable**: Output concreti del progetto
- **Criteri di Successo**: Definizione di "progetto completato"
- **Assunzioni, Vincoli e Dipendenze**: Fattori che impattano il progetto

### 4. `04-stakeholders.md`

**Template già presente** - da compilare mappando tutti i soggetti coinvolti:
- **Stakeholder Primari**: Product Owner, utenti finali (con dettagli demografici)
- **Stakeholder Secondari**: Team di sviluppo, operations, sicurezza
- **Per ogni stakeholder**: Ruolo, responsabilità, aspettative, livello influenza/interesse

### 5. `05-risk-register.md`

**Template già presente** - da compilare con analisi dei rischi:
- **Matrice dei Rischi**: Probabilità (1-5) × Impatto (1-5)
- **Rischi per categoria**: Alto, Medio, Basso
- **Per ogni rischio**: Cause, conseguenze, strategie mitigazione, owner, status

## Workflow di Compilazione

**Ordine consigliato per compilare i template:**

1. **`01-project-description.md`**: Inizia con la visione generale del progetto
2. **`04-stakeholders.md`**: Identifica tutti i soggetti coinvolti  
3. **`02-objectives.md`**: Definisci obiettivi SMART con gli stakeholder
4. **`03-project-scope.md`**: Delinea i confini (passo cruciale - richiede massima attenzione)
5. **`05-risk-register.md`**: Analizza i rischi potenziali

## Best Practices per la Compilazione

- **Single Source of Truth**: Ogni informazione ha il suo posto specifico - non duplicare contenuti tra file
- **Consistenza**: Gli obiettivi in `02-objectives.md` devono allinearsi con i criteri di successo in `03-project-scope.md`
- **Completezza placeholder**: Sostituire TUTTI i placeholder [xxx] con informazioni reali
- **Tracciabilità**: Mantenere riferimenti incrociati tra i documenti
- **Iterazione controllata**: Aggiornare i template in modo coordinato quando il progetto evolve

## Collegamenti con Altre Sezioni

- Gli obiettivi e lo scope definiti qui saranno l'input per i **requisiti** (sezione 02)
- Gli stakeholder mappati qui guideranno le **user stories** e i **casi d'uso**
- I rischi identificati qui saranno considerati nei **design patterns** e **architettura**

## Note per l'Agent

- Questi sono file template GIÀ ESISTENTI da compilare, non template da copiare
- Il README.md di questa cartella funge da introduzione alla sezione nel documento finale
- Assicurarsi che i contenuti compilati siano coerenti tra tutti e 5 i file
- La qualità di questa sezione impatta direttamente tutte le sezioni successive
