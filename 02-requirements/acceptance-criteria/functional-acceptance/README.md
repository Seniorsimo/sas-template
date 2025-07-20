# Functional Acceptance Criteria

Questa cartella contiene i criteri di accettazione per validare che le funzionalità implementate soddisfino i requisiti funzionali specifici.

## 📋 Scopo dei Functional Acceptance Criteria

I **Functional Acceptance Criteria** servono per:
- Verificare che le funzionalità si comportino come specificato
- Validare business logic e workflow applicativi  
- Testare input/output e elaborazioni dati
- Confermare che i requisiti funzionali siano implementati correttamente

## 🎯 Quando Utilizzare questo Template

### Scenario Ideali
- **Feature Completion**: Quando una nuova funzionalità è implementata
- **Business Logic Testing**: Per validare regole business complesse
- **Data Processing**: Per testare elaborazioni e trasformazioni dati
- **Workflow Validation**: Per verificare flussi operativi
- **Integration Points**: Per testare punti di integrazione funzionale

### Tipologie di Funzionalità Coperte
- **CRUD Operations**: Create, Read, Update, Delete
- **Business Workflows**: Processi business multi-step
- **Data Validation**: Controlli input e business rules
- **Calculations**: Logiche di calcolo e elaborazione
- **State Management**: Gestione stati e transizioni

## 📝 Come Utilizzare il Template

### 1. Copia e Rinomina
```bash
# Copia il template
cp AC-F-XXX-template.md AC-F-001-user-login.md

# Esempio naming convention
AC-F-{AREA}-{NUMBER}-{description}.md
```

### 2. Compila le Sezioni Principali
- **Informazioni Generali**: ID, categoria, priorità
- **Descrizione Funzionalità**: Cosa deve fare il sistema
- **Scenari di Test**: Given/When/Then scenarios
- **Criteri Dettagliati**: Checklist specifica
- **Tracciabilità**: Collegamenti a requisiti e user stories

### 3. Focus sui Comportamenti
Concentrati su **COSA** il sistema deve fare, non **COME**:
- ✅ "Il sistema deve validare il formato email"
- ❌ "Il sistema deve usare regex per email"

## 🧪 Struttura Test Scenarios

### Pattern Given/When/Then
```gherkin
**Given** [stato iniziale/precondizioni]
**When** [azione eseguita]
**Then** [risultato atteso]
**And** [condizioni aggiuntive]
```

### Tipi di Scenari da Includere

#### Happy Path (Scenario Principale)
- Flusso normale senza errori
- Dati validi e condizioni ottimali
- Comportamento atteso standard

#### Alternative Flows (Scenari Alternativi)
- Percorsi alternativi validi
- Scelte utente diverse
- Configurazioni alternative

#### Error Scenarios (Gestione Errori)
- Input invalidi
- Condizioni di errore
- Gestione eccezioni

#### Edge Cases (Casi Limite)
- Valori limite (min/max)
- Condizioni estreme
- Scenari rari ma possibili

## ✅ Checklist Qualità AC Funzionali

### Completezza
- [ ] Tutti i requisiti funzionali coperti
- [ ] Scenari happy path definiti
- [ ] Scenari alternativi identificati
- [ ] Gestione errori specificata
- [ ] Edge cases considerati

### Chiarezza
- [ ] Linguaggio business comprensibile
- [ ] Criteri non ambigui
- [ ] Esempi concreti forniti
- [ ] Terminologia consistente
- [ ] Assunzioni esplicite

### Testabilità
- [ ] Criteri misurabili
- [ ] Dati test identificati
- [ ] Ambiente test specificato
- [ ] Procedure test definite
- [ ] Risultati attesi chiari

### Tracciabilità
- [ ] Collegati a requisiti funzionali
- [ ] Derivati da user stories
- [ ] Allineati con obiettivi business
- [ ] Impatto su architettura identificato

## 🔗 Collegamenti con Altri Artefatti

### Input per AC Funzionali
- **Requirements (REQ-F-XXX)**: Requisiti funzionali da validare
- **User Stories (US-XXX)**: Storie utente implementate
- **Use Cases (UC-XXX)**: Casi d'uso del sistema
- **Business Rules**: Regole business da applicare

### Output degli AC Funzionali
- **Test Cases**: Test case dettagliati per QA
- **Test Scripts**: Script automatici di test
- **Test Data**: Dati necessari per esecuzione
- **Defect Reports**: Report bug se criteri non soddisfatti

## 📊 Metriche di Successo

### Coverage Metrics
- **Requirement Coverage**: % requisiti con AC definiti
- **Scenario Coverage**: % scenari business coperti
- **Branch Coverage**: % branch logici testati

### Quality Metrics
- **Pass Rate**: % AC che passano al primo tentativo
- **Defect Detection**: % difetti trovati tramite AC
- **Rework Rate**: % AC che richiedono modifiche

### Efficiency Metrics
- **Test Execution Time**: Tempo medio esecuzione AC
- **Automation Rate**: % AC automatizzati
- **Maintenance Effort**: Effort manutenzione AC

## 💡 Best Practices

### Durante la Definizione
1. **Coinvolgi il Product Owner** per validazione business
2. **Usa esempi concreti** invece di descrizioni astratte
3. **Mantieni atomicità** - un AC per un comportamento
4. **Evita dettagli implementativi** - focus sul comportamento
5. **Considera l'utente finale** - valore per il business

### Durante l'Implementazione
1. **Aggiorna AC** se i requisiti cambiano
2. **Valida frequentemente** con stakeholder
3. **Documenta deviazioni** e rationale
4. **Mantieni tracciabilità** durante sviluppo
5. **Prepara evidenze** per acceptance testing

### Durante i Test
1. **Esegui AC nell'ordine** di priorità business
2. **Documenta tutti i risultati** accuratamente
3. **Coinvolgi business users** nella validazione
4. **Gestisci fallimenti** con processo strutturato
5. **Ottieni sign-off formale** prima del rilascio

## 🔄 Processo di Lifecycle

### 1. Creation Phase
- Analisi requisiti funzionali
- Workshop con stakeholder
- Definizione scenari test
- Review e approvazione

### 2. Implementation Phase
- Guida per sviluppatori
- Validazione continua
- Update per cambiamenti
- Preparazione test data

### 3. Testing Phase
- Esecuzione test manuali
- Automazione dove possibile
- Reporting risultati
- Issue resolution

### 4. Acceptance Phase
- Business user validation
- Sign-off stakeholder
- Documentation update
- Lessons learned

## 📋 Template Sections Overview

### Mandatory Sections
- **Informazioni Generali**: Metadati e identificazione
- **Descrizione Funzionalità**: Scopo e contesto
- **Scenari di Test**: Given/When/Then specifici
- **Criteri Dettagliati**: Checklist verificabile
- **Tracciabilità**: Collegamenti requisiti

### Optional Sections
- **Test Data Requirements**: Dati specifici necessari
- **Environment Setup**: Configurazione ambiente
- **Automation Notes**: Note per automazione
- **Performance Considerations**: Aspetti performance

## ⚠️ Common Pitfalls

### ❌ Errori da Evitare
- **Troppo generico**: "Il sistema deve funzionare"
- **Dettagli implementativi**: "Deve usare Spring Framework"
- **Non testabile**: "Deve essere user-friendly"
- **Ambiguo**: "Deve essere veloce"
- **Senza tracciabilità**: Non collegato a requisiti

### ✅ Best Practices
- **Specifico e misurabile**: "Login deve completarsi in <2 secondi"
- **Linguaggio business**: Comprensibile agli stakeholder
- **Comportamento osservabile**: Verificabile dall'esterno
- **Completo**: Copre tutti gli scenari rilevanti
- **Mantenibile**: Facile da aggiornare

## 📞 Supporto e Contatti

Per domande sui Functional Acceptance Criteria:

- **Business Analyst**: [Responsabile definizione AC]
- **Product Owner**: [Approvazione business value]
- **QA Lead**: [Strategia testing e automazione]
- **Technical Lead**: [Feasibility e implementazione]

---

*I Functional Acceptance Criteria sono il ponte tra requisiti business e implementazione tecnica. Definiscili con precisione per garantire che il software faccia esattamente quello che il business si aspetta.*
