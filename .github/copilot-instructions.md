# Copilot Instructions for Enterprise Software Documentation Template

This workspace is a **complete enterprise template system** for software project documentation, from design to implementation.

## Project Context
- **Enterprise template** with a scalable hierarchical structure for projects of any size
- **Structured workflow**: definition → requirements → behavioral design → structural design → database design
- **Professional standards**: SMART objectives, MoSCoW prioritization, RACI matrices, complete traceability
- **Multi-domain examples**: E-commerce, Banking, Healthcare, SaaS
- **Tool stack**: PlantUML, Mermaid, Markdown with VS Code integration

## Guidelines for Copilot

### 🎯 Enterprise Templates and Structure
- **ALWAYS consult the README** of the destination folder before creating/modifying files
- **USE existing templates** as a basis for new files - never create files from scratch if a template exists
- **Follow the hierarchical structure** of the project (01-05 folders with organized subcategories)
- **Maintain consistency** with the already implemented enterprise standards

### 📝 Documentation
- **Professional Markdown** for all textual documentation with consistent formatting
- **Enterprise style** with structured sections, checklists, and tables where appropriate
- **Multi-domain examples** - always include practical examples for E-commerce, Banking, Healthcare
- **Hierarchical headings** with numbering and emojis for quick identification
- **Traceability**: use unique IDs and links between documents

### 🎨 UML Diagrams
- **MANDATORY PlantUML** for all formal UML diagrams (do not use other formats)
- **Mermaid** only for simple diagrams and quick sketches
- **Detailed comments** in each diagram to explain elements and relationships
- **Standard UML conventions** - respect stereotypes, cardinality, and formal notations
- **Template-based**: always use existing .puml templates as a starting point

### 📋 User Stories and Requirements
- **Standard format**: "As a [role], I want [functionality] so that [benefit]"
- **Hierarchical structure**: Epic → User Stories → Tasks following the 02-requirements/ structure
- **SMART acceptance criteria** with Given/When/Then for each story
- **MoSCoW prioritization** (Must/Should/Could/Won't) with business value
- **Links to use cases** and references to behavioral diagrams

### 🔗 Traceability and Governance
- **Unique IDs**: assign identifiers for requirements/stories/components (e.g., REQ-001, US-005)
- **Traceability matrix**: maintain links between requirements → design → test
- **Documented decisions**: record the rationale for architectural choices in the READMEs
- **Review checklist**: use the checklists present in the templates for validation
- **Version control**: follow naming conventions for branches and commits

## Rules for File Creation/Modification

### 🚨 FUNDAMENTAL RULE
**BEFORE creating or modifying any file:**
1. **ALWAYS read the README** of the destination folder to understand its scope and best practices
2. **Look for existing templates** in the folder - if present, it MUST be used as a basis
3. **Never create files from scratch** when a corresponding template exists
4. **Follow the conventions** established in existing templates for naming and structure

### 📁 Workflow for New Files
```
1. Identify destination folder (01-05)
2. Read the folder's README
3. Look for template-*.md or template-*.puml
4. Copy the template as a basis
5. Customize while maintaining the structure
6. Update the README if necessary
```

### 🎯 Template Priority Matrix
- **01-project-definition/**: Always use the 5 base templates (description, stakeholders, objectives, scope, risks)
- **02-requirements/**: Follow the hierarchical structure with specific subfolders
- **03-behavioral-diagrams/**: Mandatory PlantUML templates for use-case, activity, sequence
- **04-structural-diagrams/**: Architectural templates (system, class, component)
- **05-database-design/**: Only ER diagrams, NEVER SQL code

## Specific Suggestions for Diagrams
- **Sequence diagrams**: Focus on asynchronous/synchronous messages and lifelines with activations
- **Class diagrams**: Include attributes with visibility, methods, relationships (association/composition/inheritance)
- **ER diagrams**: Specify cardinality (1:1, 1:N, N:M), integrity constraints, and business rules
- **Use case diagrams**: Define primary/secondary actors, include/extend relationships, system boundary
- **Activity diagrams**: Use swimlanes for responsibilities, decision points, parallel flows
- **Component diagrams**: Show interfaces, dependencies, deployment artifacts

## 🎯 Quality Gates for Enterprise Templates
- **Completeness**: Every template must have all placeholders filled in
- **Consistency**: Uniform style and format throughout the project
- **Traceability**: Unique IDs and cross-references maintained
- **Standard Compliance**: SMART objectives, MoSCoW prioritization, UML notation
- **Multi-domain Coverage**: Examples for at least 2-3 sectors (E-commerce, Banking, Healthcare)
