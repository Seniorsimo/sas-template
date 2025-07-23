# Behavioral Diagrams

This section contains all the UML diagrams that describe the behavior of the system.

## Structure

### use-case-diagrams/
Use case diagrams that show:
- System actors
- Main use cases
- Relationships between actors and use cases
- System boundary

### activity-diagrams/
Activity diagrams that describe:
- Workflows
- Business processes
- Control logic
- Parallelism and synchronization

### sequence-diagrams/
Sequence diagrams that show:
- Interactions between objects
- Temporal order of messages
- Object lifecycle
- Collaborations between components

## Conventions

### Naming
- Files: `[descriptive-name].puml` or `[descriptive-name].mmd`
- Diagrams: Clear and descriptive titles
- Elements: Names consistent with the domain

### Tools
- **PlantUML**: For formal UML diagrams
- **Mermaid**: For quick and simple diagrams
- **Draw.io**: For complex visual diagrams

### Traceability
Each diagram must:
- Reference related user stories
- Include a description of the purpose
- Maintain consistency with other diagrams

## Recommended Workflow
1. **Use Case**: Start with high-level use cases
2. **Activity**: Detail internal processes
3. **Sequence**: Specific interactions between components

## Templates and Documentation
Each subfolder contains:
- **PlantUML Template**: Ready-to-use `.puml` files
- **README.md**: Complete guide to using the templates
- **Best Practices**: Conventions and standards for each type of diagram

### How to Get Started
1. Choose the most appropriate type of diagram for your use case
2. Read the subfolder's README for specific guidelines
3. Copy and customize the provided template
4. Follow the naming and traceability conventions
