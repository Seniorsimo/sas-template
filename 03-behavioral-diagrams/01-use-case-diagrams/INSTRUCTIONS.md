# Istruzioni per i Diagrammi dei Casi d'Uso

## Scopo

I **Diagrammi dei Casi d'Uso** servono a rappresentare le interazioni tra gli attori (utenti o sistemi esterni) e le funzionalità principali del sistema.

## Come Utilizzare il Template

1.  **Copia il Template**: Fai una copia del file `template-use-case.puml` e rinominalo in modo descrittivo (es. `UC-SistemaE-commerce.puml`).
2.  **Definisci gli Attori**: Aggiungi o modifica gli attori che interagiscono con il sistema.
3.  **Definisci i Casi d'Uso**: Elenca le funzionalità principali all'interno del rettangolo di sistema.
4.  **Crea le Relazioni**: Collega gli attori ai casi d'uso con cui interagiscono.

## Convenzioni di Naming

- **File**: `UC-[NomeSistema].puml`
- **Casi d'Uso**: Utilizzare un verbo e un oggetto (es. "Elabora Ordine").

## Best Practices

- Mantenere i diagrammi semplici e focalizzati sulle interazioni principali.
- Utilizzare `<<include>>` per le funzionalità condivise e `<<extend>>` per i flussi opzionali.
- Associare ogni caso d'uso a uno o più requisiti funzionali.
