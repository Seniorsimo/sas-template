# Istruzioni per i Template Epic

Questo documento contiene le linee guida per la compilazione dei template Epic all'interno del progetto.

## Definizione di Epic

Un Epic è un grande corpo di lavoro che può essere suddiviso in user stories specifiche. Rappresenta una funzionalità significativa con valore per l'utente finale e richiede tipicamente più sprint per essere completato.

## Convenzioni di Naming

### ID Epic
Tutti gli Epic devono seguire la convenzione di naming:
- `EPIC-XXX`

Dove XXX è un numero progressivo a tre cifre che inizia da 001.

### File Names
La struttura delle cartelle per gli Epic deve essere:
```
epic-template/
├── EPIC-XXX-[nome-breve]/
│   ├── README.md                     (Questo file con la descrizione dell'Epic)
│   ├── US-XXX-[nome-story-1].md      (User story correlata all'Epic)
│   ├── US-XXX-[nome-story-2].md      (User story correlata all'Epic)
│   └── [altri file relativi all'Epic]
```

## Struttura del Template Epic

Il README.md dell'Epic deve seguire la struttura del template fornito, assicurandosi di compilare tutte le sezioni:

### Sezioni Obbligatorie
- **Informazioni Generali**: ID, nome, descrizione, owner e status
- **Obiettivi dell'Epic**: Valore di business, problema da risolvere, utenti target
- **Metriche di Successo**: KPI primari e secondari
- **User Stories Incluse**: Elenco di user stories suddivise per priorità
- **Criteri di Accettazione Epic**: Requisiti minimi per considerare l'Epic completo

### Sezioni Raccomandate
- **Dipendenze**: Dipendenze interne ed esterne
- **Design & UX**: Wireframes, user journey, requisiti UX
- **Considerazioni Tecniche**: Architettura impattata, tecnologie, vincoli
- **Rischi e Mitigazioni**: Identificazione rischi e strategie di mitigazione

### Sezioni Opzionali
- **Timeline**: Milestone e suddivisione in sprint
- **Testing Strategy**: Tipi di test, dati di test
- **Documentazione**: Documenti da produrre
- **Definition of Done**: Criteri di completamento e post-release

## Prioritizzazione User Stories

Le user stories all'interno di un Epic devono essere prioritizzate secondo questi criteri:

### Alta Priorità
- User stories critiche per il funzionamento base dell'Epic
- Funzionalità core senza le quali l'Epic non avrebbe valore
- Stories con alta dipendenza da parte di altre stories

### Media Priorità
- User stories che aggiungono funzionalità importanti ma non critiche
- Miglioramenti significativi all'esperienza utente
- Stories con dipendenze moderate

### Bassa Priorità
- User stories "nice to have"
- Ottimizzazioni e miglioramenti minori
- Stories che possono essere posticipate se necessario

## Stima Story Points

Per la stima in story points, utilizzare la scala di Fibonacci modificata:
- 1, 2, 3, 5, 8, 13, 20, 40, 100

Dove:
- 1-3: Task semplici (ore)
- 5-13: Task di complessità media (giorni)
- 20-40: Task complessi (settimane)
- 100: Task troppo grande, da suddividere ulteriormente

## Criteri di Accettazione

I criteri di accettazione devono seguire la prioritizzazione MoSCoW:

### Must Have (M)
- Requisiti fondamentali senza i quali l'Epic fallisce
- Funzionalità minime per il rilascio in produzione

### Should Have (S)
- Requisiti importanti ma non critici
- Funzionalità che aggiungono valore significativo

### Could Have (C)
- Requisiti desiderabili ma non essenziali
- Funzionalità che migliorano l'esperienza ma non sono fondamentali

### Won't Have (W) - questa release
- Requisiti identificati ma pianificati per future release
- Funzionalità posticipate per ragioni strategiche o di tempo

## Metriche di Successo

Ogni Epic deve avere metriche di successo SMART:
- **Specific**: Chiare e ben definite
- **Measurable**: Quantificabili
- **Achievable**: Raggiungibili
- **Relevant**: Rilevanti per gli obiettivi di business
- **Time-bound**: Con scadenze definite

Esempi:
- Incremento conversioni del 15% entro 3 mesi dal rilascio
- Riduzione tempo di completamento task del 30% entro 2 mesi
- Aumento NPS di 10 punti entro 6 mesi

## Collegamenti con Requisiti e Diagrammi

Gli Epic devono mantenere tracciabilità con:

- **Requisiti Funzionali**: `REQ-F-XXX`
- **Requisiti Non-Funzionali**: `REQ-NF-XXX`
- **Diagrammi Use Case**: `UC-XXX`
- **Diagrammi di Attività**: `ACT-XXX`

## Best Practices

### Do's
- **Mantenere gli Epic di dimensione gestibile**: Idealmente completabili in 2-3 sprint
- **Definire criteri di accettazione chiari e misurabili**
- **Collegare ogni Epic a obiettivi di business**
- **Includere tutti gli stakeholder rilevanti nella definizione**
- **Mantenere aggiornato lo status e i progressi**

### Don'ts
- **Non creare Epic troppo grandi** o troppo piccoli
- **Non iniziare lo sviluppo senza criteri di accettazione chiari**
- **Non dimenticare di aggiornare le dipendenze** quando cambiano
- **Non trascurare i rischi** e le loro mitigazioni
- **Non ignorare il feedback** degli stakeholder

## Process di Review e Approvazione

1. **Draft**: Creazione iniziale dell'Epic con informazioni base
2. **Review**: Review con Product Owner e Technical Lead
3. **Refinement**: Aggiunta di dettagli e breakdown in user stories
4. **Approval**: Approvazione finale da parte degli stakeholder
5. **Ready**: Epic pronto per essere incluso nella pianificazione sprint

## Casi di Studio

### E-commerce
Epic esempio: "Sistema di raccomandazioni prodotto personalizzate"
- Metriche: Incremento conversioni, aumento valore medio carrello
- User stories: Algoritmo di raccomandazione, UI display, tracking interazioni

### Banking
Epic esempio: "Onboarding digitale clienti"
- Metriche: Riduzione tempo onboarding, aumento completamento processo
- User stories: KYC digitale, firma elettronica, verifica identità

### Healthcare
Epic esempio: "Gestione appuntamenti pazienti"
- Metriche: Riduzione no-show, incremento soddisfazione pazienti
- User stories: Calendario prenotazioni, reminder automatici, gestione cancellazioni
