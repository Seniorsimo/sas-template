# Istruzioni per la Gestione delle User Stories

## Struttura Organizzativa

Ogni epic ha la sua cartella dedicata. Per creare una nuova epic, duplicare la cartella `epic-template` e rinominarla seguendo la convenzione `epic-[nome-breve]`.

```
user-stories/
├── epic-[nome-epic]/
│   ├── README.md              (Descrizione dell'epic)
│   ├── US-001-[titolo].md     (User story 1)
│   └── US-xxx-[titolo].md     (Altre user stories)
├── epic-template/             (Template per nuovi epic)
└── README.md                  (Documento di riepilogo)
```

## Convenzioni di Naming

- **Epic**: Le cartelle devono seguire il formato `epic-[nome-breve]` (es. `epic-authentication`).
- **User Stories**: I file devono seguire il formato `US-XXX-[titolo-breve].md` (es. `US-001-login-utente.md`).

## Template User Story

Ogni user story deve seguire il formato definito nel file `US-XXX-template.md` all'interno della cartella `epic-template`.

## Workflow

1.  **Creazione**: Creare la cartella dell'epic e le relative user stories utilizzando i template.
2.  **Refinement**: Rivedere e dettagliare le user stories durante le sessioni di pianificazione.
3.  **Sviluppo**: Implementare le user stories, seguendo i criteri di accettazione.
4.  **Validazione**: Verificare che l'implementazione soddisfi i requisiti e i criteri di accettazione.

## Best Practices

- Scrivere le user stories dal punto di vista dell'utente.
- Mantenere le user stories piccole e indipendenti.
- Definire criteri di accettazione chiari e misurabili.
- Aggiornare regolarmente lo stato e i dettagli delle user stories.
