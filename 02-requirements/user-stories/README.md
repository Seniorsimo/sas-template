# User Stories

This folder contains all the user stories for the project, organized by epic.

## 📁 Organizational Structure

### Organization by Epic
Each epic has its own dedicated folder:
```
user-stories/
├── epic-[epic-name]/
│   ├── README.md              (Description of the epic)
│   ├── US-001-[title].md     (User story 1)
│   ├── US-002-[title].md     (User story 2)
│   └── US-xxx-[title].md     (Other user stories)
├── epic-template/             (Template for new epics)
└── README.md                  (This file)
```

## 🏷️ Naming Conventions

### Epic
- **Folders**: `epic-[short-name]` (e.g., `epic-authentication`, `epic-user-management`)
- **Epic Name**: Descriptive and concise (e.g., "User Management", "Authentication System")

### User Stories
- **File**: `US-XXX-[short-title].md`
- **ID**: Global progressive numbering (US-001, US-002, etc.)
- **Title**: Descriptive and concise (e.g., `US-001-user-login.md`)

## 📋 User Story Template

Each user story must follow this format:

```markdown
# US-XXX: [User Story Title]

## General Information
**ID**: US-XXX
**Epic**: [Epic Name]
**Priority**: High | Medium | Low
**Estimate**: [Story Points]
**Status**: Backlog | In Progress | In Review | Done

## User Story
**As** [type of user]
**I want** [feature/goal]
**So that** [benefit/value]

## Acceptance Criteria
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]

## Test Cases
### Test Case 1: [Test name]
- **Prerequisites**: [Initial conditions]
- **Steps**: [Step by step]
- **Expected Result**: [What should happen]

## Technical Notes
[Implementation details, constraints, dependencies]

## Traceability
- **Related Objectives**: [From 01-project-definition/objectives.md]
- **Functional Requirements**: [REQ-XXX]
- **Use Cases**: [UC-XXX]
```

## 🎯 Prioritization

### Priority Criteria
- **High**: Core functionality for MVP, blockers
- **Medium**: Important functionality for a complete release
- **Low**: Nice-to-have, future improvements

### Story Points
- **1**: Very simple (a few hours)
- **2**: Simple (1 day)
- **3**: Medium (2-3 days)
- **5**: Complex (1 week)
- **8**: Very complex (2 weeks)
- **13**: Epic is too large, needs to be split

## 🔄 User Stories Workflow

### 1. Creation
1. Create an epic folder if it doesn't exist
2. Copy the template from `epic-template/`
3. Assign a progressive ID
4. Fill in all fields

### 2. Refinement
1. Review during sprint planning
2. Update acceptance criteria
3. Estimate story points
4. Identify dependencies

### 3. Development
1. Status → "In Progress"
2. Implementation according to criteria
3. Status → "In Review"
4. Testing and validation
5. Status → "Done"

## 📊 Tracking and Metrics

### Definition of Ready (DoR)
- [ ] User story written in standard format
- [ ] Acceptance criteria defined
- [ ] Story points estimated
- [ ] Dependencies identified
- [ ] Mockup/wireframe if necessary

### Definition of Done (DoD)
- [ ] Code implemented
- [ ] Unit tests written and passing
- [ ] Acceptance criteria verified
- [ ] Code review completed
- [ ] Documentation updated

## 💡 Best Practices

### ✅ Do's
- **Write from the user's perspective** - always from the user's point of view
- **Keep stories independent** - avoid tight dependencies
- **Use INVEST criteria** (Independent, Negotiable, Valuable, Estimable, Small, Testable)
- **Include specific** and measurable acceptance criteria
- **Regularly update** status and details

### ❌ Don'ts
- **Don't write technical tasks** as user stories
- **Don't create stories that are too large** (>8 story points)
- **Don't omit the value** for the user
- **Don't duplicate stories** between different epics
- **Don't forget traceability** with requirements and objectives

---

*To create a new epic, copy the `epic-template` folder and customize it.*
