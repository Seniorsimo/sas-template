# Istruzioni per i Requisiti di Sicurezza

Questo documento contiene le linee guida per la compilazione dei requisiti non-funzionali relativi alla sicurezza del sistema.

## Definizione

I requisiti di sicurezza definiscono come il sistema deve proteggere:
- Dati e informazioni sensibili
- Accesso alle funzionalità
- Integrità delle operazioni
- Tracciabilità delle azioni

## Convenzioni di Naming

### ID Requisiti
Tutti i requisiti di sicurezza devono seguire la convenzione di naming:
- `REQ-NF-SEC-XXX`

Dove XXX è un numero progressivo a tre cifre che inizia da 001.

### File Names
`REQ-NF-SEC-XXX-[nome-breve].md`

**Esempi**:
- `REQ-NF-SEC-001-authentication.md`
- `REQ-NF-SEC-002-authorization.md`
- `REQ-NF-SEC-003-data-encryption.md`

## Categorie di Sicurezza

### Autenticazione
- Definisce come gli utenti devono dimostrare la propria identità
- Deve specificare meccanismi di autenticazione (password, MFA, biometria)
- Deve specificare policy di complessità e gestione credenziali
- Esempi: "Il sistema deve supportare l'autenticazione a due fattori per tutti gli accessi amministrativi"

### Autorizzazione
- Definisce chi può accedere a cosa e come
- Deve specificare modelli di controllo accessi (RBAC, ABAC)
- Deve specificare granularità dei permessi
- Esempi: "Il sistema deve implementare RBAC con almeno 4 livelli di permessi"

### Crittografia e Protezione Dati
- Definisce come proteggere i dati a riposo e in transito
- Deve specificare algoritmi e protocolli di crittografia
- Deve specificare gestione delle chiavi
- Esempi: "I dati personali devono essere crittografati con AES-256 quando memorizzati"

### Auditing e Logging
- Definisce quali eventi devono essere registrati
- Deve specificare dettagli da registrare (chi, cosa, quando, dove)
- Deve specificare retention policy
- Esempi: "Tutti gli accessi amministrativi devono essere registrati e conservati per 12 mesi"

### Protezione da Attacchi
- Definisce misure contro attacchi comuni
- Deve specificare controlli specifici (XSS, CSRF, SQLi, etc.)
- Deve specificare approccio alla gestione vulnerabilità
- Esempi: "Il sistema deve implementare protezioni contro iniezioni SQL su tutti gli input utente"

## Standard di Riferimento

Per ogni requisito di sicurezza, fare riferimento agli standard di settore applicabili:

- **OWASP ASVS**: Livelli di verifica della sicurezza delle applicazioni
- **ISO 27001**: Requisiti per la gestione della sicurezza delle informazioni
- **NIST SP 800-53**: Controlli di sicurezza per sistemi informativi
- **PCI DSS**: Standard per sistemi che gestiscono dati di pagamento
- **GDPR**: Requisiti per la protezione dei dati personali
- **HIPAA**: Requisiti per dati sanitari

## Metodi di Verifica

### Penetration Testing
- Test offensivi per identificare vulnerabilità
- Black/white/grey box testing
- Exploit di vulnerabilità in ambiente controllato

### Vulnerability Scanning
- Scansione automatizzata per vulnerabilità note
- Verifica di configurazioni errate
- Analisi di dipendenze vulnerabili

### Code Review
- Analisi statica del codice
- Verifica di pattern di sicurezza
- Ricerca di anti-pattern e vulnerabilità

### Security Compliance Audit
- Verifica di conformità agli standard
- Assessment documentale
- Gap analysis

## Prioritizzazione

### Critical
- Requisiti senza i quali il sistema è vulnerabile ad attacchi gravi
- Protezioni per dati altamente sensibili
- Esempi: autenticazione, autorizzazione base, crittografia dati sensibili

### High
- Requisiti che proteggono da minacce significative
- Controlli di sicurezza importanti ma non bloccanti
- Esempi: audit logging, protezioni da attacchi comuni

### Medium
- Requisiti che migliorano la postura di sicurezza
- Protezioni aggiuntive oltre i controlli base
- Esempi: controlli avanzati, hardening aggiuntivo

### Low
- Requisiti nice-to-have
- Miglioramenti incrementali alla sicurezza
- Esempi: ottimizzazioni, casi edge

## Best Practices

### Do's
- **Seguire il principio** del minimo privilegio
- **Implementare difesa in profondità** (multiple layers)
- **Validare tutti gli input** indipendentemente dalla sorgente
- **Considerare la security by design** dall'inizio del progetto
- **Pianificare la gestione degli incidenti** di sicurezza

### Don'ts
- **Non affidarsi alla "security through obscurity"**
- **Non ignorare** le best practice di settore
- **Non implementare** crittografia custom
- **Non sottovalutare** gli attacchi insider
- **Non dimenticare** l'aggiornamento regolare delle difese
