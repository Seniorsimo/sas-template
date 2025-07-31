# Istruzioni per la Gestione delle User Stories

Questa cartella contiene le istruzioni operative e le linee guida per la creazione e gestione delle user stories all'interno del progetto.

## Struttura Organizzativa

### Organizzazione per Epic

Ogni epic ha la sua cartella dedicata:
```
user-stories/
├── epic-[nome-epic]/
│   ├── README.md              (Descrizione dell'epic)
│   ├── US-001-[titolo].md     (User story 1)
│   ├── US-002-[titolo].md     (User story 2)
│   └── US-xxx-[titolo].md     (Altre user stories)
├── epic-template/             (Template per nuovi epic)
└── README.md                  (Documento di riepilogo)
```

## Convenzioni di Naming

### Epic

- **Cartelle**: `epic-[nome-breve]` (es. `epic-authentication`, `epic-user-management`)
- **Nome Epic**: Descrittivo e conciso (es. "Gestione Utenti", "Sistema di Autenticazione")

### User Stories

- **File**: `US-XXX-[titolo-breve].md`
- **ID**: Numerazione progressiva globale (US-001, US-002, etc.)
- **Titolo**: Descrittivo e conciso (es. `US-001-login-utente.md`)

## Template User Story

Ogni user story deve seguire questo formato:

```markdown
# US-XXX: [Titolo User Story]

## Informazioni Generali

**ID**: US-XXX
**Epic**: [Nome Epic]
**Priorità**: Alta | Media | Bassa
**Stima**: [Story Points]
**Status**: Backlog | In Progress | In Review | Done

## User Story

**Come** [tipo di utente]  
**Voglio** [funzionalità/obiettivo]  
**Per** [beneficio/valore]

## Criteri di Accettazione

- [ ] [Criterio 1]
- [ ] [Criterio 2]
- [ ] [Criterio 3]

## Casi di Test

### Test Case 1: [Nome test]

- **Prerequisiti**: [Condizioni iniziali]
- **Passi**: [Step by step]
- **Risultato Atteso**: [Cosa dovrebbe succedere]

## Note Tecniche

[Dettagli implementativi, vincoli, dipendenze]

## Tracciabilità

- **Obiettivi collegati**: [Da 01-project-definition/objectives.md]
- **Requisiti funzionali**: [REQ-XXX]
- **Casi d'uso**: [UC-XXX]
```

## Prioritizzazione

### Criteri di Priorità

- **Alta**: Funzionalità core per MVP, blockers
- **Media**: Funzionalità importanti per release completa
- **Bassa**: Nice-to-have, miglioramenti futuri

### Story Points

- **1**: Molto semplice (poche ore)
- **2**: Semplice (1 giorno)
- **3**: Media (2-3 giorni)
- **5**: Complessa (1 settimana)
- **8**: Molto complessa (2 settimane)
- **13**: Epic troppo grande, da spezzare

## Workflow User Stories

### 1. Creazione

- Crea cartella epic se non esiste
- Copia template da `epic-template/`
- Assegna ID progressivo
- Compila tutti i campi

### 2. Refinement

- Review durante sprint planning
- Aggiorna criteri di accettazione
- Stima story points
- Identifica dipendenze

### 3. Development

- Status → "In Progress"
- Implementazione seguendo criteri
- Status → "In Review"
- Testing e validazione
- Status → "Done"

## Tracking e Metriche

### Definition of Ready (DoR)

- [ ] User story scritta in formato standard
- [ ] Criteri di accettazione definiti
- [ ] Story points stimati
- [ ] Dipendenze identificate
- [ ] Mockup/wireframe se necessario

### Definition of Done (DoD)

- [ ] Codice implementato
- [ ] Unit test scritti e passanti
- [ ] Criteri di accettazione verificati
- [ ] Code review completata
- [ ] Documentazione aggiornata

## Best Practices

### Do's

- **Scrivi from user perspective** - sempre dal punto di vista dell'utente
- **Mantieni stories indipendenti** - evita dipendenze strette
- **Usa INVEST criteria** (Independent, Negotiable, Valuable, Estimable, Small, Testable)
- **Include acceptance criteria specifici** e misurabili
- **Aggiorna regolarmente** status e dettagli

### Don'ts

- **Non scrivere task tecnici** come user stories
- **Non creare stories troppo grandi** (>8 story points)
- **Non omettere il valore** per l'utente
- **Non duplicare stories** tra epic diversi
- **Non dimenticare la tracciabilità** con requisiti e obiettivi

## Come Creare un Nuovo Epic

1. Copia la cartella `epic-template/`
2. Rinomina in `epic-[nome-breve]`
3. Modifica il file README.md con i dettagli dell'epic
4. Crea le user stories individuali partendo dal template
5. Aggiorna il README.md principale per includere riferimenti al nuovo epic
