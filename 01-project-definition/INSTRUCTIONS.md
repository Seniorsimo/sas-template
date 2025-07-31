# Istruzioni per la Definizione del Progetto

Questa cartella contiene i template per definire la fase iniziale di un progetto software. L'obiettivo è creare una base solida e coerente, eliminando ridondanze e assicurando che ogni documento abbia uno scopo chiaro.

---

## Struttura e Scopo dei File

### 1. `01-project-description.md`
- **Scopo**: Fornire una visione d'insieme del progetto. È il punto di partenza per chiunque voglia comprendere rapidamente il "cosa" e il "perché".
- **Contenuto Chiave**:
  - **Panoramica Generale**: Un riassunto del progetto.
  - **Contesto e Problema**: Il motivo per cui il progetto è necessario.
  - **Soluzione Proposta**: La visione della soluzione a alto livello.
  - **Valore e Benefici**: I principali vantaggi attesi.
- **Da non includere**: Dettagli su scope, vincoli, assunzioni o criteri di accettazione specifici.

### 2. `02-objectives.md`
- **Scopo**: Definire gli obiettivi misurabili (SMART) del progetto. Risponde alla domanda: "Cosa consideriamo un successo?".
- **Contenuto Chiave**:
  - **Obiettivi di Business**: Target legati al business (es. aumento fatturato, riduzione costi).
  - **Obiettivi Tecnici**: Target non funzionali (es. performance, uptime, sicurezza).
  - **Obiettivi di Qualità**: Target legati all'esperienza utente e all'affidabilità.
- **Da non includere**: Vincoli, assunzioni, dipendenze o scope.

### 3. `03-project-scope.md`
- **Scopo**: Essere l'unica fonte di verità per i confini del progetto. Centralizza tutte le informazioni su cosa è incluso/escluso, i vincoli, le assunzioni e le dipendenze.
- **Contenuto Chiave**:
  - **In Scope / Out of Scope**: Elenco chiaro di funzionalità e servizi.
  - **Deliverable**: Cosa verrà prodotto concretamente.
  - **Criteri di Successo e Accettazione**: Come si valuterà il completamento e la qualità.
  - **Assunzioni, Vincoli e Dipendenze**: La sezione definitiva per questi elementi.
- **Nota**: Questo è il documento più importante per evitare "scope creep".

### 4. `04-stakeholders.md`
- **Scopo**: Mappare tutte le persone e i team coinvolti nel progetto.
- **Contenuto Chiave**:
  - **Stakeholder Primari**: Chi è direttamente impattato (es. utenti, sponsor).
  - **Stakeholder Secondari**: Chi è indirettamente coinvolto (es. team di supporto, sicurezza).
- **Da non includere**: Assunzioni generali (vanno in `03-project-scope.md`).

### 5. `05-risk-register.md`
- **Scopo**: Identificare, analizzare e pianificare la mitigazione dei rischi di progetto.
- **Contenuto Chiave**:
  - **Matrice dei Rischi**: Per valutare probabilità e impatto.
  - **Registro dei Rischi**: Elenco dettagliato dei rischi con piani di risposta.

---

## Ordine di Compilazione e Flusso di Lavoro

Si consiglia di seguire questo ordine per garantire coerenza:

1.  **`01-project-description.md`**: Inizia con la visione generale.
2.  **`04-stakeholders.md`**: Identifica subito chi è coinvolto.
3.  **`02-objectives.md`**: Definisci gli obiettivi misurabili con gli stakeholder.
4.  **`03-project-scope.md`**: Delinea i confini, raccogliendo vincoli e assunzioni da tutti. Questo è un passo cruciale e richiede la massima attenzione.
5.  **`05-risk-register.md`**: Analizza cosa potrebbe andare storto.

---

## Best Practices

- **Single Source of Truth**: Rispetta lo scopo di ogni file. Se un'informazione appartiene a `03-project-scope.md` (es. un vincolo), inseriscila solo lì.
- **Consistenza**: Assicurati che i documenti siano allineati. Ad esempio, gli obiettivi in `02-objectives.md` devono riflettersi nei criteri di successo in `03-project-scope.md`.
- **Iterazione**: Questi documenti sono "vivi". Aggiornali regolarmente man mano che il progetto evolve, ma sempre in modo controllato e dopo averne discusso con il team.
- **Chiarezza**: Usa un linguaggio semplice e diretto. Evita ambiguità che potrebbero portare a incomprensioni.
