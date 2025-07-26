# Istruzioni per l'Agente - Diagrammi Strutturali

Questa sezione è dedicata alla creazione di diagrammi che descrivono la struttura e l'architettura del sistema. Il tuo compito è utilizzare i template forniti per creare i diagrammi necessari.

## Tipi di Diagrammi

In questa sezione, puoi creare i seguenti tipi di diagrammi:

-   **Diagrammi delle Classi (`class-diagrams/`)**: Per mostrare le classi del sistema, i loro attributi, metodi e relazioni.
-   **Diagrammi dei Componenti (`component-diagrams/`)**: Per descrivere l'architettura del sistema a livello di componenti, le loro interfacce e dipendenze.
-   **Diagramma dell'Architettura di Sistema**: Utilizza il template `template-system-architecture.puml` per creare un diagramma generale dell'architettura del sistema.

## Workflow Consigliato

1.  **Architettura di Sistema**: Inizia con un diagramma generale dell'architettura per avere una visione d'insieme.
2.  **Diagrammi dei Componenti**: Dettaglia i singoli componenti, le loro interfacce e le loro dipendenze.
3.  **Diagrammi delle Classi**: Modella la struttura interna dei componenti, le classi del dominio e i pattern di progettazione utilizzati.

## Come Iniziare

1.  Scegli il tipo di diagramma più adatto a ciò che devi rappresentare.
2.  Leggi il file `README.md` (o `INSTRUCTIONS.md` se già aggiornato) nella sottocartella specifica per le linee guida.
3.  Copia e personalizza i template PlantUML (`.puml`) o Draw.io (`.drawio`) forniti.
4.  Segui le convenzioni di naming e assicurati che il diagramma sia tracciabile rispetto ai requisiti e agli altri diagrammi.

## Strumenti

-   **PlantUML**: Utilizza PlantUML per creare diagrammi UML formali come diagrammi di classe e di componente.
-   **Draw.io**: Ideale per diagrammi di architettura e infrastruttura.
-   **Mermaid**: Per diagrammi più semplici e veloci.

## Convenzioni per i Diagrammi delle Classi

-   **Visibilità**: Usa `+` per public, `-` per private, `#` per protected.
-   **Relazioni**: Usa le notazioni standard per associazione, aggregazione, composizione ed ereditarietà.
-   **Stereotipi**: Usa stereotipi come `<<interface>>`, `<<abstract>>`, `<<entity>>`, ecc., per chiarire il ruolo delle classi.

## Best Practice

-   **Organizzazione**: Raggruppa le classi correlate e mantieni i diagrammi leggibili.
-   **Dettaglio**: Includi solo gli attributi e i metodi più rilevanti.
-   **Tracciabilità**: Collega i diagrammi alle user stories e ai requisiti.
-   **Coerenza**: Mantieni la coerenza con i diagrammi comportamentali.
-   **Naming**: Segui le convenzioni di naming per file, classi, attributi e metodi.
