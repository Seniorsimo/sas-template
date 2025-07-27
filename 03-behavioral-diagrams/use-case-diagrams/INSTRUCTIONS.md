# Istruzioni per i Diagrammi dei Casi d'Uso

Questo documento contiene le linee guida e le best practices per la creazione dei diagrammi dei casi d'uso (Use Case Diagrams) all'interno del progetto.

## Scopo dei Use Case Diagrams

I diagrammi dei casi d'uso servono a:
- Identificare gli attori del sistema (persone o sistemi esterni)
- Definire le funzionalità offerte dal sistema
- Stabilire i confini del sistema (system boundary)
- Documentare le relazioni tra attori e funzionalità

## Convenzioni di Modellazione

### Attori

- **Posizionamento**: Attori primari a sinistra, attori secondari/sistemi a destra
- **Naming**: Nomi significativi in formato PascalCase (es. "ClienteRegistrato")
- **Generalizzazione**: Utilizzare solo quando un attore specializzato eredita tutte le associazioni dell'attore generale
- **Stereotipi**: Utilizzare stereotipi come <<system>>, <<human>>, <<device>> quando appropriato

### Casi d'Uso

- **Naming**: Verbo + Oggetto (es. "EffettuaOrdine", "VisualizzaCatalogo")
- **Granularità**: Mantenere un livello di dettaglio consistente all'interno dello stesso diagramma
- **Descrizione**: Ogni caso d'uso deve avere una breve descrizione testuale associata
- **ID**: Assegnare ID univoci (UC-XXX) per tracciabilità

### Relazioni

- **Association**: Da usare per collegare attori e casi d'uso (freccia semplice)
- **Include**: Da usare quando un caso d'uso incorpora obbligatoriamente un altro (dipendenza funzionale)
- **Extend**: Da usare per varianti opzionali o condizionali di un caso d'uso base
- **Generalization**: Da usare con parsimonia solo per casi d'uso che specializzano un comportamento generale

## Template e Pattern

### System Boundary

Utilizzare sempre un rettangolo per definire il boundary del sistema:

```plantuml
rectangle "Nome Sistema" {
  ' casi d'uso interni al sistema
}
```

### Package per Raggruppamento

Raggruppare i casi d'uso correlati utilizzando il costrutto package:

```plantuml
package "Area Funzionale" {
  usecase UC1
  usecase UC2
}
```

## Esempi per Domini Applicativi

### E-commerce

- Attori: Cliente, ClienteRegistrato, SistemaAutorizzazione, SistemaPagamenti
- Casi d'uso: SfogliaCatalogo, EffettuaOrdine, TracciaSpedizione, GestisceCarrello

### Banking

- Attori: Correntista, ConsulenteBancario, SistemaInterbancario
- Casi d'uso: EffettuaPrelievo, DisponiBonifico, ApriConto, RichiediPrestito

### Healthcare

- Attori: Paziente, Medico, Infermiere, SistemaAssicurativo
- Casi d'uso: PrenotaVisita, ConsultaCartellaClinica, PrescriveMedicinale

## Tracciabilità e Validazione

- Ogni diagramma di caso d'uso deve essere collegato ai requisiti funzionali (REQ-F-XXX)
- Ogni caso d'uso deve essere collegato alle user stories correlate (US-XXX)
- Verificare la copertura completa dei requisiti funzionali primari

## Procedura Operativa

1. Iniziare identificando tutti gli attori esterni al sistema
2. Per ogni attore, identificare i casi d'uso con cui interagisce
3. Definire le relazioni tra i casi d'uso (include, extend)
4. Raggruppare i casi d'uso correlati utilizzando package
5. Validare il diagramma rispetto ai requisiti
6. Documentare eventuali assumptions o decisioni di modellazione

## Common Mistakes da Evitare

- Casi d'uso troppo generici (es. "UsaSistema")
- Casi d'uso che rappresentano funzioni tecniche interne
- Relazioni dirette tra attori
- Troppi casi d'uso in un unico diagramma (max 15-20)
- Uso eccessivo di relazioni extend/include che complica la leggibilità

## Riferimenti

- UML 2.5 Specification
- Fowler, M. "UML Distilled"
- Cockburn, A. "Writing Effective Use Cases"
