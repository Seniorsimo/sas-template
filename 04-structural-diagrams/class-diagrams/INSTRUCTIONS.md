# Istruzioni per i Diagrammi delle Classi

Questo documento contiene le linee guida per la creazione dei diagrammi delle classi (Class Diagrams) utilizzando il template fornito.

## Scopo dei Diagrammi delle Classi

I diagrammi delle classi servono a:
- Modellare la struttura statica di un sistema.
- Definire classi, interfacce, attributi e metodi.
- Visualizzare le relazioni tra le classi (es. ereditarietà, associazione).

## Come Utilizzare il Template

Per creare un nuovo diagramma delle classi, segui questi passaggi:

1. **Copia il Template**: Fai una copia del file `template-class-diagram.puml` e rinominalo in modo descrittivo (es. `CD-NomeDominio.puml`).

2. **Modifica il Titolo**: Aggiorna il titolo del diagramma per riflettere il dominio o il modulo che stai modellando.

    ```plantuml
    title Modello del Dominio per l'E-commerce - Diagramma delle Classi
    ```

3. **Definisci Classi e Interfacce**: Usa la sintassi `class` e `interface` per definire gli elementi del tuo sistema.

    ```plantuml
    class Utente {
      -id: long
      +nome: String
      +email: String
    }

    interface Pagamento {
      +effettuaPagamento(importo: float): boolean
    }
    ```

4. **Definisci Attributi e Metodi**: All'interno di una classe o interfaccia, elenca gli attributi e i metodi. Usa i simboli di visibilità:
    - `+` per `public`
    - `-` per `private`
    - `#` per `protected`
    - `~` per `package-private`

5. **Crea le Relazioni**: Usa le frecce per mostrare le relazioni tra le classi.
    - **Associazione**: `ClasseA -- ClasseB`
    - **Aggregazione**: `ClasseA o-- ClasseB` (ClasseA "ha un" ClasseB)
    - **Composizione**: `ClasseA *-- ClasseB` (ClasseA "è composta da" ClasseB)
    - **Ereditarietà**: `Figlio --|> Genitore`
    - **Implementazione**: `ClasseConcreta ..|> Interfaccia`

    ```plantuml
    Cliente "1" -- "0..*" Ordine
    Ordine *-- "1..*" RigaOrdine
    PagamentoCartaCredito ..|> Pagamento
    ```

## Convenzioni di Naming

- **File**: `CD-[NomeDominio].puml` (es. `CD-GestioneUtenti.puml`).
- **Titolo**: `[Nome Dominio] - Diagramma delle Classi`.
- **Classi/Interfacce**: `PascalCase`.
- **Attributi/Metodi**: `camelCase`.

---
*Usa questo template per creare una rappresentazione chiara e strutturata del tuo codice, facilitando la comprensione e la manutenzione.*
