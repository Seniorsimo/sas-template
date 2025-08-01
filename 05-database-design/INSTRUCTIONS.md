# Istruzioni per il Database Design

## Scopo della Sezione

Questa sezione documenta il design della base dati attraverso diagrammi Entity-Relationship e un dizionario dei dati completo. **Non deve contenere codice SQL o DDL** - solo documentazione concettuale e logica.

## Struttura della Cartella

- **`er-diagram/`**: Contiene i diagrammi Entity-Relationship in formato PlantUML
  - `template-er-diagram.puml`: Template base per creare diagrammi ER
  - `README.md`: Introduzione ai diagrammi ER
  - `INSTRUCTIONS.md`: Istruzioni specifiche per i diagrammi ER

- **`data-dictionary.md`**: Template per la definizione dettagliata di entità, attributi, relazioni e vincoli

## Workflow di Compilazione

### Fase 1: Modellazione Concettuale (ER Diagrams)
1. Utilizzare `template-er-diagram.puml` come base
2. Identificare entità principali dai requisiti funzionali (sezione 02)
3. Definire attributi per ogni entità
4. Modellare relazioni con cardinalità appropriate
5. Aggiungere commenti esplicativi nel diagramma PlantUML

### Fase 2: Documentazione Dettagliata (Data Dictionary)
1. Compilare `data-dictionary.md` per ogni entità del diagramma ER
2. Specificare tipi di dati, vincoli, valori default
3. Documentare relazioni e chiavi esterne
4. Includere business rules e vincoli di integrità

## Convenzioni Obbligatorie

### Diagrammi ER (PlantUML)
- **Entità**: Nomi al singolare, PascalCase (es. `User`, `OrderItem`)
- **Attributi**: camelCase (es. `firstName`, `createdAt`)
- **Relazioni**: Verbi descrittivi con cardinalità specificata (es. `User ||--o{ Order : "places"`)
- **Chiavi primarie**: Indicare con `+id: long <<PK>>`
- **Chiavi esterne**: Indicare con `+userId: long <<FK>>`

### Data Dictionary
- **Tabelle**: Nomi al plurale, snake_case (es. `users`, `order_items`)
- **Campi**: snake_case (es. `first_name`, `created_at`)  
- **Chiavi primarie**: `[tabella_singolare]_id` (es. `user_id`, `order_id`)
- **Relazioni**: Documentare con formato `campo_fk → tabella_riferita(campo_pk)`

## Tracciabilità con Altre Sezioni

### Input da Sezioni Precedenti
- **02-requirements/02-functional-requirements**: Requisiti core determinano entità principali
- **02-requirements/01-user-stories**: User stories guidano la modellazione dei dati
- **01-project-definition/03-project-scope**: Vincoli di scope influenzano il modello dati

### Collegamento ai Diagrammi Strutturali  
- Le entità del database corrispondono spesso alle classi nei diagrammi di classe (sezione 04)
- I component diagrams mostrano come i servizi accedono al database

## Best Practices per Database Design

### Normalizzazione
- Applicare normalizzazione appropriata (tipicamente 3NF)
- Documentare eventuali denormalizzazioni per performance con rationale
- Evitare ridondanze non necessarie

### Naming e Struttura
- Mantenere coerenza nei nomi di entità/attributi
- Utilizzare convenzioni standard per tipi di dati
- Documentare vincoli di business e regole di integrità

### Sincronizzazione Template
- Mantenere sempre allineati diagrammi ER e data dictionary
- Aggiornare entrambi quando si modifica il modello
- Verificare che ogni entità/attributo sia documentata in entrambi i posti

## Template PlantUML per ER Diagram

Il template fornisce struttura base per:
- Definizione entità con attributi tipizzati
- Relazioni con cardinalità UML standard  
- Commenti per spiegare business rules
- Sezioni per entità core, lookup tables, junction tables

## Template Data Dictionary

Il template include sezioni per:
- Panoramica del modello dati
- Definizione dettagliata di ogni tabella
- Indici e constraint per ogni tabella
- Relazioni tra tabelle
- Glossario dei termini di business
- Business rules e vincoli di integrità

**Nota**: Assicurarsi che ogni elemento nel diagramma ER abbia la corrispondente documentazione nel data dictionary.