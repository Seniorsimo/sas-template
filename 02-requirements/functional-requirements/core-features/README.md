# Core Features - Funzionalità Principali

Questa cartella contiene i requisiti per le funzionalità core del sistema.

## 📋 Panoramica

Le **Core Features** sono le funzionalità fondamentali senza le quali il sistema non può operare. Queste sono tipicamente classificate come "Must Have" nella prioritizzazione MoSCoW.

## 🎯 Categorie di Core Features

### Autenticazione e Autorizzazione
- Gestione login/logout utenti
- Controllo accessi basato su ruoli
- Gestione sessioni e token
- Password policy e security

### Gestione Dati Principali
- CRUD operations per entità core
- Validazione dati
- Business rules enforcement
- Data consistency

### Business Logic Core
- Processi business principali
- Workflow automation
- Calcoli e algoritmi core
- State management

### Reporting e Analytics
- Report standard
- Dashboard principali
- Export dati
- Audit logging

## 📁 Struttura File

### Template Naming
`REQ-F-XXX-[nome-funzionalità].md`

### Esempi
- `REQ-F-001-user-authentication.md`
- `REQ-F-002-role-management.md`
- `REQ-F-003-data-validation.md`

## 📊 Priorità Core Features

### Livello 1 - Sistema Base
- [ ] Autenticazione utenti
- [ ] Autorizzazione base
- [ ] Gestione sessioni
- [ ] Logging sistema

### Livello 2 - Business Logic
- [ ] Funzionalità business principali
- [ ] Workflow core
- [ ] Validazioni business
- [ ] Notifiche base

### Livello 3 - Features Avanzate
- [ ] Reporting
- [ ] Analytics base
- [ ] Export/Import
- [ ] Configurazioni sistema

## 🔗 Collegamenti

### User Stories Principali
Le core features sono tipicamente derivate dalle user stories ad alta priorità dell'epic principale del progetto.

### Architettura
Le core features definiscono i componenti principali dell'architettura del sistema.

### Database
Le core features determinano le entità principali del modello dati.

## 💡 Linee Guida

### Criteri per Core Features
- **Essenziale**: Il sistema non può funzionare senza
- **Frequente**: Utilizzato dalla maggioranza degli utenti
- **Fondante**: Base per altre funzionalità
- **MVP**: Incluso nel Minimum Viable Product

### Quality Gates
- Tutti i requisiti core devono essere "Must Have"
- Copertura test >= 95%
- Performance requirements stringenti
- Security requirements obbligatori

---

*I requisiti in questa cartella rappresentano la base del sistema e devono essere implementati con la massima qualità.*
