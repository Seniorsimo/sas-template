# Istruzioni per i Diagrammi dei Casi d'Uso

Questo documento contiene le linee guida per la creazione dei diagrammi dei casi d'uso (Use Case Diagrams) utilizzando il template fornito.

## Scopo dei Diagrammi dei Casi d'Uso

I diagrammi dei casi d'uso servono a:
- Identificare gli attori del sistema (utenti o sistemi esterni).
- Definire le funzionalità principali offerte dal sistema.
- Stabilire i confini del sistema.

## Come Utilizzare il Template

Per creare un nuovo diagramma dei casi d'uso, segui questi passaggi:

1. **Copia il Template**: Fai una copia del file `template-use-case.puml` e rinominalo in modo descrittivo (es. `UC-NomeSistema.puml`).

2. **Modifica il Titolo**: Aggiorna il titolo del diagramma per riflettere il sistema che stai modellando.

    ```plantuml
    title Sistema di E-commerce - Casi d'Uso
    ```

3. **Definisci gli Attori**: Gli attori sono entità esterne che interagiscono con il sistema. Modifica o aggiungi attori nel template.

    ```plantuml
    actor "Cliente" as Customer
    actor "Amministratore" as Admin
    ```

4. **Definisci i Casi d'Uso**: I casi d'uso rappresentano le funzionalità del sistema. Elencali all'interno del rettangolo che definisce i confini del sistema.

    ```plantuml
    rectangle "Sistema E-commerce" {
      usecase "Effettua Ordine" as UCOrder
      usecase "Gestisci Prodotti" as UCProducts
    }
    ```

5. **Crea le Relazioni**: Collega gli attori ai casi d'uso con cui interagiscono.

    ```plantuml
    Customer --> UCOrder
    Admin --> UCProducts
    ```

6. **Usa `<<include>>` e `<<extend>>` (se necessario)**:
    - `(CasoA) .> (CasoB) : <<include>>`: Il CasoA include sempre il CasoB.
    - `(CasoA) .> (CasoB) : <<extend>>`: Il CasoA è una variazione opzionale del CasoB.

    ```plantuml
    (Effettua Ordine) .> (Verifica Pagamento) : <<include>>
    ```

## Convenzioni di Naming

- **File**: `UC-[NomeSistema].puml` (es. `UC-SistemaBancario.puml`).
- **Titolo**: `Sistema [Nome Sistema] - Casi d'Uso`.
- **Casi d'Uso**: Usa un verbo e un oggetto (es. "Elabora Ordine").

---
*Usa questo template per creare una visione d'insieme chiara delle funzionalità del tuo sistema e di come gli utenti interagiscono con esse.*
