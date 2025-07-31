# Istruzioni per i Requisiti di Compatibilità

Questo documento contiene le linee guida per la compilazione dei requisiti non-funzionali relativi alla compatibilità del sistema.

## Definizione

I requisiti di compatibilità definiscono come il sistema deve:
- Funzionare su diverse piattaforme (browser, OS, dispositivi)
- Integrarsi con altri sistemi e applicazioni
- Rispettare standard e protocolli
- Mantenere compatibilità con versioni precedenti

## Convenzioni di Naming

### ID Requisiti
Tutti i requisiti di compatibilità devono seguire la convenzione di naming:
- `REQ-NF-COMP-XXX`

Dove XXX è un numero progressivo a tre cifre che inizia da 001.

### File Names
`REQ-NF-COMP-XXX-[nome-breve].md`

**Esempi**:
- `REQ-NF-COMP-001-browser-support.md`
- `REQ-NF-COMP-002-os-compatibility.md`
- `REQ-NF-COMP-003-api-standards.md`

## Categorie di Compatibilità

### Compatibilità Browser
- Definisce su quali browser e versioni il sistema deve funzionare
- Deve specificare livelli di supporto (completo, funzionale, minimale)
- Deve specificare funzionalità critiche vs opzionali
- Esempi: "Il sistema deve funzionare completamente su Chrome 90+, Firefox 88+, Safari 14+"

### Compatibilità Dispositivi
- Definisce su quali dispositivi il sistema deve funzionare
- Deve specificare tipi di dispositivi (desktop, tablet, mobile)
- Deve specificare risoluzioni e orientamenti supportati
- Esempi: "L'interfaccia utente deve essere responsive e supportare dispositivi con risoluzione da 320px a 2560px"

### Compatibilità Sistema Operativo
- Definisce su quali sistemi operativi il sistema deve funzionare
- Deve specificare OS e versioni minime
- Deve specificare eventuali requisiti hardware
- Esempi: "Il client desktop deve funzionare su Windows 10+, macOS 10.15+, Ubuntu 20.04+"

### Compatibilità API/Integrazioni
- Definisce con quali sistemi esterni il sistema deve integrarsi
- Deve specificare protocolli di comunicazione
- Deve specificare versioni API supportate
- Esempi: "Il sistema deve supportare OAuth 2.0 per autenticazione con provider esterni"

### Compatibilità Dati
- Definisce i formati di dati supportati per import/export
- Deve specificare standard di interoperabilità
- Deve specificare compatibilità con versioni precedenti dei dati
- Esempi: "Il sistema deve supportare import/export in formato CSV, JSON e XML"

## Standard di Riferimento

Per ogni requisito di compatibilità, fare riferimento agli standard applicabili:

- **HTML/CSS**: Versioni supportate, standard W3C
- **Browser**: Versioni dei principali browser, market share
- **Mobile**: Android/iOS versioni, responsive breakpoints
- **Accessibility**: WCAG 2.1, ADA, Section 508
- **API**: REST, GraphQL, SOAP, OpenAPI
- **Format**: JSON Schema, XML Schema, CSV RFC

## Metodi di Verifica

### Cross-Browser Testing
- Test manuale/automatico sui browser target
- Visual regression testing
- Feature detection
- Utilizzo di servizi come BrowserStack

### Responsive Testing
- Test su diverse risoluzioni
- Test su dispositivi reali e simulati
- Testing di orientamento (portrait/landscape)
- Media query validation

### Integration Testing
- Test di integrazione con sistemi esterni
- Validazione di protocolli e formati
- Test di edge case e fallback
- Mock services per sistemi esterni

### Backward Compatibility Testing
- Test con dati e API di versioni precedenti
- Verifica di migrazioni automatiche
- Test di downgrade scenario
- Compatibility mode testing

## Prioritizzazione

### Critical
- Requisiti senza i quali il sistema è inutilizzabile per la maggior parte degli utenti
- Supporto per piattaforme principali
- Esempi: browser/OS con market share >5%, API core

### High
- Requisiti che impattano significativamente gruppi di utenti
- Supporto per piattaforme secondarie ma importanti
- Esempi: browser/OS con market share 1-5%, integrazioni principali

### Medium
- Requisiti che migliorano l'accessibilità a gruppi specifici
- Compatibilità estesa
- Esempi: browser legacy, dispositivi meno comuni

### Low
- Requisiti nice-to-have
- Compatibilità con piattaforme minori
- Esempi: browser/OS obsoleti, formati legacy

## Best Practices

### Do's
- **Specificare versioni minime** supportate
- **Definire livelli di supporto** (completo, parziale, minimale)
- **Considerare trend di mercato** per browser e dispositivi
- **Pianificare strategie di graceful degradation**
- **Definire policy di end-of-support** per versioni legacy

### Don'ts
- **Non promettere supporto universale** (irrealistico)
- **Non ignorare** le piattaforme emergenti
- **Non trascurare** il costo di testing cross-platform
- **Non dimenticare** la compatibilità con versioni precedenti
- **Non sovra-specificare** dettagli implementativi
