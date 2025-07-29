# Istruzioni per i Diagrammi dei Componenti

Questo documento contiene le linee guida per la creazione dei diagrammi dei componenti (Component Diagrams) utilizzando il template fornito.

## Scopo dei Diagrammi dei Componenti

I diagrammi dei componenti servono a:
- Visualizzare l'architettura di un sistema a livello di componenti software.
- Mostrare le dipendenze tra i diversi moduli o servizi.
- Documentare le interfacce che i componenti espongono e utilizzano.

## Come Utilizzare il Template

Per creare un nuovo diagramma dei componenti, segui questi passaggi:

1. **Copia il Template**: Fai una copia del file `template-component-diagram.puml` e rinominalo in modo descrittivo (es. `CMP-ArchitetturaSistema.puml`).

2. **Modifica il Titolo**: Aggiorna il titolo del diagramma per riflettere l'architettura che stai modellando.

    ```plantuml
    title Architettura del Sistema di E-commerce - Diagramma dei Componenti
    ```

3. **Definisci i Componenti**: Usa la sintassi `component` o `[Nome Componente]` per definire i blocchi principali del tuo sistema.

    ```plantuml
    component "Servizio Utenti" as UserService
    [Servizio Ordini]
    ```

4. **Definisci le Interfacce**: Le interfacce definiscono i punti di contatto tra i componenti.

    ```plantuml
    interface "API Utenti" as UserAPI
    ```

5. **Crea le Relazioni**: Collega i componenti e le interfacce per mostrare le dipendenze.
    - **Dipendenza**: `ComponenteA --> ComponenteB`
    - **Interfaccia Fornita**: `ComponenteA -() Interfaccia`
    - **Interfaccia Richiesta**: `ComponenteB ()- Interfaccia`

    ```plantuml
    [Servizio Ordini] --> [Servizio Utenti]
    [Servizio Utenti] -() UserAPI
    ```

6. **Raggruppa i Componenti (Opzionale)**: Usa i `package` per raggruppare logicamente i componenti.

    ```plantuml
    package "Backend" {
      [Servizio Utenti]
      [Servizio Ordini]
    }
    ```

## Convenzioni di Naming

- **File**: `CMP-[NomeArchitettura].puml` (es. `CMP-SistemaBancario.puml`).
- **Titolo**: `Architettura [Nome Sistema] - Diagramma dei Componenti`.
- **Componenti**: `PascalCase` o nomi descrittivi.

---
*Usa questo template per creare una visione chiara dell'architettura del tuo sistema, migliorando la comunicazione tra i team e la pianificazione dello sviluppo.*
