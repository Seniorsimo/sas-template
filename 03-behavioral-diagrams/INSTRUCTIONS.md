# Istruzioni per i Diagrammi Comportamentali

Questa sezione contiene le linee guida per la creazione e la gestione dei diagrammi UML che descrivono il comportamento del sistema.

## Tipi di Diagrammi

### Use Case Diagrams

- Utilizzare per rappresentare le interazioni tra attori esterni e sistema
- Definire chiaramente boundary del sistema
- Includere relazioni di include/extend solo quando necessario
- Specificare attori primari (a sinistra) e secondari (a destra)

### Activity Diagrams

- Utilizzare swimlanes per separare responsabilità tra attori/sistemi
- Includere punti di decisione con condizioni chiare
- Mostrare flussi paralleli quando appropriato
- Evidenziare start point e end point

### Sequence Diagrams

- Mostrare chiaramente lifelines e attivazioni
- Differenziare messaggi sincroni e asincroni
- Includere returns per operazioni significative
- Utilizzare frammenti combinati per logiche complesse (alt, opt, loop)

## Convenzioni

### Naming

- File: `[ID]-[nome-descrittivo].puml` (es. `SEQ-001-checkout-process.puml`)
- Diagrammi: Titoli chiari e descrittivi che specificano processo/funzionalità
- Elementi: Nomi consistenti con il glossario di progetto
- ID univoci: UC-XXX per use case, ACT-XXX per activity, SEQ-XXX per sequence

### Strumenti

- **PlantUML**: Obbligatorio per tutti i diagrammi UML formali
- **Mermaid**: Solo per diagrammi rapidi e proof-of-concept
- **Draw.io**: Da utilizzare solo per diagrammi non supportati da PlantUML

### Tracciabilità

Ogni diagramma deve:
- Referenziare le user stories correlate con ID (US-XXX)
- Includere collegamenti ai requisiti funzionali (REQ-F-XXX)
- Mantenere consistenza terminologica con altri diagrammi
- Documentare eventuali decisioni significative con rationale

## Workflow Consigliato

1. **Use Case**: Iniziare dai casi d'uso di alto livello per definire scope
2. **Activity**: Dettagliare processi interni per ciascun caso d'uso principale
3. **Sequence**: Sviluppare interazioni specifiche tra componenti per scenari critici

## Template e Standards

- Utilizzare sempre i template forniti come base di partenza
- Seguire convenzioni UML standard per notazione e simboli
- Includere commenti esplicativi nei diagrammi per elementi complessi
- Limitare la complessità: massimo 7-9 attori per use case, massimo 15 lifeline per sequence

## Procedure Operative

1. Copiare il template appropriato dalla cartella corrispondente
2. Rinominare seguendo la convenzione di naming con ID progressivo
3. Compilare i placeholder mantenendo la struttura del template
4. Verificare la coerenza con requisiti e altri diagrammi
5. Aggiornare riferimenti nel README della cartella se necessario

## Multi-Domain Examples

Fornire almeno un esempio per ciascuno dei domini:
- **E-commerce**: Processi di checkout, gestione catalogo, ordini
- **Banking**: Trasferimenti, apertura conti, gestione carte
- **Healthcare**: Prenotazioni, cartelle cliniche, gestione pazienti

## Quality Gates

Prima di considerare completo un diagramma, verificare:
- Tutti i placeholder sono stati compilati
- La sintassi PlantUML è valida e il diagramma è renderizzabile
- ID e riferimenti sono corretti e tracciabili
- La notazione UML è conforme agli standard
- Sono inclusi esempi per diversi domini applicativi
