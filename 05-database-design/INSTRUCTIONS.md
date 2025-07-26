# Istruzioni per l'Agente - Progettazione del Database

Questa sezione è dedicata alla progettazione del database. Il tuo compito è di creare la documentazione visiva e testuale della struttura dei dati.

**Importante**: Questa sezione non deve contenere codice SQL o script di implementazione, ma solo la progettazione.

## Struttura della Cartella

-   **`/er-diagram`**: Qui vanno inseriti i diagrammi Entità-Relazione (ER).
-   **`data-dictionary.md`**: Questo file serve a documentare in dettaglio tutte le entità, i loro attributi e le relazioni.

## Tipi di Documenti da Creare

-   **Diagrammi ER**: Utilizza i template in `er-diagram/` per creare diagrammi che mostrino:
    -   Le entità del dominio e i loro attributi.
    -   Le relazioni tra le entità, con la relativa cardinalità.
    -   Le chiavi primarie e le chiavi esterne.
-   **Dizionario dei Dati**: Compila il file `data-dictionary.md` per fornire una descrizione dettagliata di ogni entità e attributo, inclusi i tipi di dati, i vincoli e le regole di business.

## Workflow Consigliato

1.  **Analisi dei Requisiti**: Inizia analizzando i requisiti e le user stories per identificare le entità principali del sistema.
2.  **Modello Concettuale**: Crea un diagramma ER ad alto livello che mostri le entità principali e le loro relazioni.
3.  **Modello Logico**: Raffina il diagramma ER aggiungendo dettagli come attributi, chiavi e cardinalità, applicando i principi di normalizzazione.
4.  **Dizionario dei Dati**: Documenta in modo completo ogni entità e attributo nel `data-dictionary.md`.

## Strumenti

-   **PlantUML**: Utilizza PlantUML per creare i diagrammi ER, in modo che siano facilmente versionabili. Troverai un template in `er-diagram/template-er-diagram.puml`.

## Convenzioni per i Diagrammi ER

-   **Entità**: Usa nomi al singolare e in PascalCase (es. `Customer`).
-   **Attributi**: Usa camelCase (es. `firstName`).
-   **Chiavi primarie**: Sottolinea o evidenzia gli attributi che fungono da chiave primaria.
-   **Relazioni**: Usa nomi descrittivi per le relazioni (es. "ha un").
-   **Cardinalità**: Specifica sempre la cardinalità delle relazioni (es. 1 a molti).

## Best Practice

-   **Tracciabilità**: Assicurati che il design del database sia tracciabile rispetto ai requisiti.
-   **Coerenza**: Mantieni la coerenza con gli altri diagrammi, in particolare con i diagrammi di classe.
-   **Normalizzazione**: Applica i principi di normalizzazione (almeno fino alla 3NF) per evitare ridondanze e anomalie.
-   **Documentazione**: Documenta tutte le decisioni di progettazione, in particolare se decidi di denormalizzare per motivi di performance.
-   **Layout pulito**: Mantieni i diagrammi puliti e leggibili.
-   **Raggruppamento logico**: Posiziona le entità correlate vicine tra loro.
-   **Colori**: Usa i colori per categorizzare le entità, se necessario.
