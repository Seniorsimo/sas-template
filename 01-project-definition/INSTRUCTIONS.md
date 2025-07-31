# Istruzioni per la Definizione del Progetto

Questa cartella contiene i template e le linee guida per definire la prima fase della documentazione di progetto: la definizione e contestualizzazione del progetto software.

## Scopo della Cartella

La cartella `01-project-definition` rappresenta la prima fase di documentazione del progetto e fornisce le fondamenta per tutte le fasi successive. Qui si definiscono:

- Il problema che il progetto intende risolvere
- Gli stakeholder coinvolti e i loro interessi
- Gli obiettivi misurabili (SMART)
- Lo scope del progetto (incluso ed escluso)
- I rischi identificati e le strategie di mitigazione

## File Template Disponibili

### 1. project-description.md

Template per descrivere il problema da risolvere e la soluzione proposta:

- **Panoramica generale** del progetto
- **Problema da risolvere** e contesto
- **Soluzione proposta** e approccio
- **Benefici attesi** e valore di business

### 2. objectives.md

Template per definire obiettivi SMART:

- **Obiettivi di business** (primari e secondari)
- **Obiettivi tecnici** (performance, scalabilità, sicurezza)
- **Obiettivi di qualità** (usabilità, affidabilità, portabilità)

### 3. project-scope.md

Template per delimitare i confini del progetto:

- **Scope statement** e giustificazione
- **In scope**: funzionalità, moduli, integrazioni incluse
- **Out of scope**: cosa NON sarà incluso
- **Vincoli** (tecnici, temporali, budget, organizzativi)
- **Work Breakdown Structure** di alto livello

### 4. stakeholders.md

Template per mappare tutti gli stakeholder del progetto:

- **Stakeholder primari** (Product Owner, Utenti finali)
- **Stakeholder secondari** (Team di sviluppo, Operations, Sicurezza)
- **Stakeholder esterni** (Fornitori, Partner, Enti regolatori)

### 5. risk-register.md

Template per la gestione dei rischi:

- **Risk Matrix** con scala probabilità/impatto
- **Catalogazione rischi** per categoria e priorità

## Come Utilizzare Questi Template

### 1. Ordine di Compilazione Consigliato

- **project-description.md** → Definisci il COSA e il PERCHE'
- **objectives.md** → Stabilisci COSA vuoi ottenere
- **project-scope.md** → Delimita COSA farai e NON farai
- **stakeholders.md** → Identifica il CHI è coinvolto  
- **risk-register.md** → Anticipa COSA potrebbe andare storto

### 2. Personalizzazione

Per ogni file template:

- **Cerca e sostituisci** tutti i placeholder `[Nome Progetto]`, `[Descrizione]`, etc.
- **Compila le sezioni** con informazioni specifiche del tuo progetto
- **Rimuovi sezioni** non applicabili al tuo contesto
- **Aggiungi sezioni** specifiche se necessario

### 3. Iterazione e Refinement

- **Revisiona regolarmente** questi documenti durante il progetto
- **Aggiorna** quando cambiano requisiti o contesto
- **Mantieni allineamento** tra tutti i documenti
- **Traccia cambiamenti** e versioni

## Checklist di Completamento

Prima di procedere alla fase successiva (`02-requirements`), assicurati di aver completato:

- [ ] **Project Description**: Descrizione chiara di problema, soluzione e benefici
- [ ] **Objectives**: Obiettivi SMART definiti con metriche di successo
- [ ] **Project Scope**: Confini chiari di cosa è incluso ed escluso
- [ ] **Stakeholders**: Identificazione completa di tutti gli stakeholder con ruoli e responsabilità  
- [ ] **Risk Register**: Identificazione dei rischi principali con piani di mitigazione

## Collegamento con Altre Sezioni

### Input per le Fasi Successive:

- **02-requirements**: Gli obiettivi definiti guideranno la raccolta dei requisiti
- **03-behavioral-diagrams**: Gli stakeholder identificati diventeranno attori nei use case
- **04-structural-diagrams**: Lo scope definisce i moduli da progettare
- **05-database-design**: I requisiti di business guidano il design del database

### Tracciabilità:

- Ogni requisito deve essere tracciabile agli obiettivi
- Ogni use case deve servire almeno uno stakeholder
- Ogni componente deve essere nel scope definito

## Best Practices

### Do's

- **Coinvolgi gli stakeholder** nella definizione e review
- **Sii specifico** nelle descrizioni ed evita generalità
- **Usa metriche quantificabili** dove possibile
- **Mantieni documenti concisi** ma completi
- **Versiona tutti i documenti** per tracciare cambiamenti

### Don'ts

- **Non fare assunzioni** senza documentarle
- **Non definire scope troppo ampio** per la prima release
- **Non trascurare i rischi** anche se sembrano improbabili
- **Non procedere** senza approvazione formale
- **Non dimenticare** di aggiornare i documenti durante il progetto

## Esempi Multi-Domain

### E-commerce
- **Problema**: Gestione catalogo prodotti non scalabile
- **Stakeholder**: Clienti online, merchant, team marketing
- **Obiettivo**: Aumentare conversione del 15% in 6 mesi

### Banking
- **Problema**: Processo di onboarding clienti troppo lungo
- **Stakeholder**: Clienti bancari, compliance officer, risk management
- **Obiettivo**: Ridurre tempo di onboarding del 30% mantenendo compliance

### Healthcare
- **Problema**: Difficoltà nel tracciare appuntamenti e follow-up
- **Stakeholder**: Pazienti, medici, personale amministrativo
- **Obiettivo**: Ridurre no-show del 25% e migliorare follow-up del 40%
