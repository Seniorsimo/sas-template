# Istruzioni per i Requisiti di Usabilità

Questo documento contiene le linee guida per la compilazione dei requisiti non-funzionali relativi all'usabilità del sistema.

## Definizione

I requisiti di usabilità definiscono come il sistema deve essere facile da:
- Apprendere
- Utilizzare
- Ricordare
- Recuperare dagli errori
- Soddisfacente per l'utente

## Convenzioni di Naming

### ID Requisiti
Tutti i requisiti di usabilità devono seguire la convenzione di naming:
- `REQ-NF-USA-XXX`

Dove XXX è un numero progressivo a tre cifre che inizia da 001.

### File Names
`REQ-NF-USA-XXX-[nome-breve].md`

**Esempi**:
- `REQ-NF-USA-001-accessibility.md`
- `REQ-NF-USA-002-learnability.md`
- `REQ-NF-USA-003-error-handling.md`

## Categorie di Usabilità

### Accessibilità
- Definisce come il sistema deve essere utilizzabile da persone con disabilità
- Deve specificare gli standard di riferimento (WCAG 2.1, EN 301 549)
- Deve specificare il livello di conformità (A, AA, AAA)
- Esempi: "Il sistema deve essere conforme al livello AA di WCAG 2.1"

### Learnability
- Definisce quanto facilmente i nuovi utenti apprendono il sistema
- Deve specificare metriche di apprendimento
- Deve specificare contesti d'uso
- Esempi: "Un nuovo utente deve completare un task di base in meno di 2 minuti senza formazione"

### Efficiency
- Definisce quanto efficacemente gli utenti esperti possono utilizzare il sistema
- Deve specificare metriche di produttività
- Deve specificare percorsi di navigazione
- Esempi: "Un utente esperto deve poter completare il task X in meno di 5 click"

### Memorability
- Definisce quanto facilmente gli utenti occasionali ricordano come usare il sistema
- Deve specificare metriche di memorizzazione
- Deve specificare periodi di inattività
- Esempi: "Un utente deve poter completare un task dopo 3 mesi di inattività senza ri-formazione"

### Error Handling
- Definisce come il sistema previene e gestisce gli errori utente
- Deve specificare meccanismi di prevenzione
- Deve specificare messaggi di errore
- Esempi: "Il sistema deve fornire messaggi di errore che suggeriscono l'azione correttiva"

### Satisfaction
- Definisce la soddisfazione soggettiva degli utenti
- Deve specificare metriche di soddisfazione
- Deve specificare modalità di misurazione
- Esempi: "Il sistema deve ottenere un punteggio SUS superiore a 80"

## Standard di Riferimento

Per ogni requisito di usabilità, fare riferimento agli standard applicabili:

- **WCAG 2.1/2.2**: Web Content Accessibility Guidelines
- **ISO 9241-11**: Ergonomics of human-system interaction
- **Nielsen's Heuristics**: 10 principi di usabilità
- **Material Design/Human Interface Guidelines**: Standard UI dei principali ecosistemi

## Metodi di Verifica

### User Testing
- Test con utenti reali
- Scenari di utilizzo predefiniti
- Metriche di successo e tempo di completamento
- Feedback qualitativo

### Accessibility Audit
- Revisione automatica (WAVE, Axe)
- Revisione manuale con checklist
- Test con screen reader e tecnologie assistive
- Conformità alle normative

### Heuristic Evaluation
- Valutazione da esperti di usabilità
- Utilizzo di checklist standard
- Identificazione problemi principali
- Suggerimenti di miglioramento

### A/B Testing
- Test comparativo di design alternativi
- Metriche di performance
- Validazione con dati reali
- Iterazione del design

## Prioritizzazione

### Critical
- Requisiti senza i quali il sistema è inutilizzabile per gruppi significativi di utenti
- Conformità legale all'accessibilità
- Esempi: accessibilità base, usabilità core funzionalità

### High
- Requisiti che impattano significativamente l'esperienza utente
- User flow principali
- Esempi: error prevention, feedback chiaro, navigazione intuitiva

### Medium
- Requisiti che migliorano la qualità dell'esperienza
- Ottimizzazioni di percorsi secondari
- Esempi: shortcuts, personalizzazione, help contestuale

### Low
- Requisiti nice-to-have
- Raffinatezze dell'interfaccia
- Esempi: animazioni, micro-interazioni, delight features

## Best Practices

### Do's
- **Definire metriche quantitative** quando possibile
- **Includere diversi tipi di utenti** nei requisiti
- **Considerare diversi contesti d'uso** (mobile, desktop, condizioni ambientali)
- **Allineare con i principi di UX** del progetto
- **Definire scenari di test** per validare ogni requisito

### Don'ts
- **Non essere vaghi** ("l'interfaccia deve essere intuitiva")
- **Non ignorare** gli utenti con disabilità
- **Non sovra-specificare** aspetti di UI nel requisito
- **Non dimenticare** il bilanciamento con altri requisiti
- **Non ignorare** feedback raccolti da utenti reali
