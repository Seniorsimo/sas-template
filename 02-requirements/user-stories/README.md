# User Stories

Questa cartella contiene tutte le user stories del progetto, organizzate per epic.

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
└── README.md                  (Questo file)
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
1. Crea cartella epic se non esiste
2. Copia template da `epic-template/`
3. Assegna ID progressivo
4. Compila tutti i campi

### 2. Refinement
1. Review durante sprint planning
2. Aggiorna criteri di accettazione
3. Stima story points
4. Identifica dipendenze

### 3. Development
1. Status → "In Progress"
2. Implementazione seguendo criteri
3. Status → "In Review"
4. Testing e validazione
5. Status → "Done"

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

---

*Per creare un nuovo epic, copia la cartella `epic-template` e personalizzala.*
