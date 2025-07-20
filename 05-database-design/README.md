# Database Design

Questa sezione contiene la progettazione completa del database.

## Struttura

### er-diagram/
Modelli Entità-Relazione che mostrano:
- Entità del dominio
- Attributi delle entità
- Relazioni e cardinalità
- Vincoli di integrità

### database-schema/
Schema logico del database:
- DDL (Data Definition Language)
- Indici e ottimizzazioni
- Stored procedures e funzioni
- Trigger e vincoli

### data-dictionary.md
Dizionario dei dati completo:
- Definizione di tutte le tabelle
- Descrizione dei campi
- Tipi di dati e vincoli
- Relazioni e foreign keys

## Convenzioni ER

### Entità
- Nomi al singolare e in PascalCase
- Attributi in camelCase
- Chiavi primarie sottolineate

### Relazioni
- Nomi descrittivi del tipo di relazione
- Cardinalità chiaramente specificata
- Ruoli quando necessario

### Attributi
- Tipi di dati specificati
- Vincoli di dominio
- Valori di default

## Processo di Design

1. **Analisi dei Requisiti**: Estrazione entità dai requisiti
2. **Modello Concettuale**: ER ad alto livello
3. **Modello Logico**: Normalizzazione e ottimizzazione
4. **Modello Fisico**: DDL e implementazione

## Normalizzazione
- **1NF**: Eliminazione gruppi ripetuti
- **2NF**: Eliminazione dipendenze parziali
- **3NF**: Eliminazione dipendenze transitive
- **BCNF**: Forma normale Boyce-Codd quando necessaria

## Best Practices
- Usa naming conventions consistenti
- Implementa vincoli di integrità
- Pianifica per la scalabilità
- Documenta decisioni di denormalizzazione
