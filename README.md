# Documentazione Progetto Software

Questo workspace è organizzato per gestire l'intero ciclo di vita documentale di un progetto software, dalla definizione iniziale fino alla progettazione strutturale.

## 📁 Struttura del Progetto

### 01-project-definition/
Contiene la descrizione del progetto e gli obiettivi principali
- `project-description.md` - Descrizione dettagliata del progetto
- `stakeholders.md` - Identificazione degli stakeholder
- `objectives.md` - Obiettivi e scope del progetto

### 02-requirements/
Gestione dei requisiti e user stories
- `user-stories.md` - Raccolta delle user stories
- `functional-requirements.md` - Requisiti funzionali
- `non-functional-requirements.md` - Requisiti non funzionali
- `acceptance-criteria.md` - Criteri di accettazione

### 03-behavioral-diagrams/
Diagrammi comportamentali UML
- `use-case-diagrams/` - Diagrammi dei casi d'uso
- `activity-diagrams/` - Diagrammi delle attività
- `sequence-diagrams/` - Diagrammi di sequenza
- `state-diagrams/` - Diagrammi di stato (opzionale)

### 04-structural-diagrams/
Diagrammi strutturali UML
- `class-diagrams/` - Diagrammi delle classi
- `component-diagrams/` - Diagrammi dei componenti
- `deployment-diagrams/` - Diagrammi di deployment

### 05-database-design/
Progettazione del database
- `er-diagram/` - Modello Entità-Relazione
- `database-schema/` - Schema logico del database
- `data-dictionary.md` - Dizionario dei dati

### templates/
Template riutilizzabili per documentazione e diagrammi

## 🛠️ Strumenti Consigliati

### Estensioni VS Code
- **PlantUML**: Per creare diagrammi UML con codice
- **Markdown All in One**: Per gestire la documentazione
- **Draw.io Integration**: Per diagrammi visuali
- **Mermaid Preview**: Per diagrammi Mermaid

### Formati Supportati
- **PlantUML** (.puml) - Diagrammi UML testuali
- **Mermaid** (.mmd) - Diagrammi con sintassi semplificata
- **Draw.io** (.drawio) - Diagrammi visuali
- **Markdown** (.md) - Documentazione

## 🚀 Come Iniziare

1. **Definisci il Progetto**: Inizia compilando i file in `01-project-definition/`
2. **Raccogli i Requisiti**: Scrivi le user stories in `02-requirements/`
3. **Crea i Diagrammi Comportamentali**: Usa `03-behavioral-diagrams/`
4. **Progetta la Struttura**: Sviluppa i diagrammi in `04-structural-diagrams/`
5. **Disegna il Database**: Completa con `05-database-design/`

## 📋 Workflow Consigliato

```
Descrizione Progetto → User Stories → Use Cases → Activity Diagrams → 
Sequence Diagrams → Class Diagrams → ER Model → Database Schema
```

## 📝 Note

- Ogni directory contiene un README.md specifico con istruzioni dettagliate
- I template nella cartella `templates/` possono essere copiati e personalizzati
- Usa le estensioni VS Code per un'esperienza ottimale
- Mantieni la tracciabilità tra requisiti e diagrammi

---
*Creato il: 20 Luglio 2025*
