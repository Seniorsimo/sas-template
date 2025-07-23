# 📋 Acceptance Criteria Templates

This folder contains templates for defining the project's acceptance criteria, organized by type of test and validation.

## 📁 Folder Structure

```
acceptance-criteria/
├── README.md                           # This file
├── functional-acceptance/              # Criteria for functional tests
│   └── AC-F-XXX-template.md           # Template for functional criteria
├── non-functional-acceptance/          # Criteria for non-functional tests
│   └── AC-NF-XXX-template.md          # Template for non-functional criteria
├── integration-acceptance/             # Criteria for integration tests
│   └── AC-I-XXX-template.md           # Template for integration criteria
└── user-acceptance/                    # Criteria for User Acceptance Testing
    └── AC-UA-XXX-template.md          # Template for UAT criteria
```

## 📋 Types of Acceptance Criteria

### 🔧 Functional Acceptance Criteria (AC-F-XXX)
**Purpose**: To define criteria for validating that the implemented features meet the specific functional requirements.

**When to use**:
- Testing individual features
- Validating business logic behaviors
- Verifying application workflows
- Testing system input/output

**Example ID**: AC-F-001, AC-F-002, AC-F-LOGIN-001

### ⚡ Non-Functional Acceptance Criteria (AC-NF-XXX)
**Purpose**: To define criteria for validating system quality attributes (performance, security, usability, etc.).

**When to use**:
- Performance and load testing
- Validating security requirements
- Usability and accessibility testing
- Verifying scalability and reliability

**Example ID**: AC-NF-001, AC-NF-PERF-001, AC-NF-SEC-001

### 🔗 Integration Acceptance Criteria (AC-I-XXX)
**Purpose**: To define criteria for validating the integration between systems, services, or components.

**When to use**:
- API and web service testing
- Integration with external systems
- Database and data flow testing
- Validating message queues and event processing

**Example ID**: AC-I-001, AC-I-API-001, AC-I-DB-001

### 👥 User Acceptance Criteria (AC-UA-XXX)
**Purpose**: To define criteria for validating that the system meets the expectations and needs of the end-users.

**When to use**:
- User Acceptance Testing (UAT)
- Validating user experience
- Usability testing with real users
- Verifying business value for end-users

**Example ID**: AC-UA-001, AC-UA-LOGIN-001, AC-UA-DASHBOARD-001

## 📝 Naming Conventions

### Standard ID Schema
```
AC-{TYPE}-{AREA}-{NUMBER}
```

**Where**:
- `{TYPE}`: F (Functional) | NF (Non-Functional) | I (Integration) | UA (User Acceptance)
- `{AREA}`: [Optional] Functional area or specific module
- `{NUMBER}`: Progressive number (001, 002, etc.)

### Naming Examples
```
AC-F-001              # First generic functional criterion
AC-F-LOGIN-001         # First functional criterion for the login area
AC-F-PAYMENT-003       # Third functional criterion for payments
AC-NF-PERF-001         # First non-functional performance criterion
AC-NF-SEC-002          # Second non-functional security criterion
AC-I-API-001           # First API integration criterion
AC-I-DATABASE-001      # First database integration criterion
AC-UA-ONBOARDING-001   # First UAT criterion for onboarding
AC-UA-MOBILE-001       # First UAT criterion for mobile experience
```

## 🔄 Usage Workflow

### 1. Creating a New Criterion
1. Identify the appropriate type (F/NF/I/UA)
2. Copy the corresponding template
3. Rename the file according to the conventions
4. Fill in all sections of the template
5. Link to existing requirements and user stories

### 2. Review and Approval
1. Business Analyst review for completeness
2. Technical review for feasibility
3. Stakeholder approval for business-critical criteria
4. QA review for testability

### 3. Implementation and Testing
1. Development team implements features
2. QA team executes tests according to criteria
3. Business users validate acceptance criteria
4. Formal sign-off and closure

## 🔗 Connection with Other Artifacts

### Upward Traceability
- **Business Objectives** (01-project-definition/objectives.md)
- **User Stories** (02-requirements/user-stories/)
- **Functional Requirements** (02-requirements/functional-requirements/)
- **Non-Functional Requirements** (02-requirements/non-functional-requirements/)

### Downward Traceability
- **Test Cases** (Detailed test documents)
- **Test Scripts** (Automatic test scripts)
- **Test Results** (Test results report)

### Horizontal Linking
- **Use Case Diagrams** (03-behavioral-diagrams/use-case-diagrams/)
- **Sequence Diagrams** (03-behavioral-diagrams/sequence-diagrams/)
- **Class Diagrams** (04-structural-diagrams/class-diagrams/)

## ✅ Quality Criteria Checklist

### Effective Acceptance Criteria
- [ ] **Specific**: Specific and unambiguous criteria
- [ ] **Measurable**: Quantifiable metrics and thresholds
- [ ] **Achievable**: Realistic and implementable
- [ ] **Relevant**: Linked to business objectives
- [ ] **Time-bound**: With clear timelines for testing

### Template Completeness
- [ ] All mandatory sections filled in
- [ ] Traceability to requirements established
- [ ] Test scenarios clearly defined
- [ ] Explicit pass/fail criteria
- [ ] Responsibilities and timelines assigned

### Review Quality Gates
- [ ] **Business Review**: Value and completeness validated
- [ ] **Technical Review**: Feasibility and testability confirmed
- [ ] **UX Review**: User experience considerations included
- [ ] **QA Review**: Test approach and automation strategy

## 📊 Metrics and KPIs

### Project Metrics
- **Coverage**: % of requirements with defined AC
- **Completeness**: % of AC with all fields filled
- **Traceability**: % of AC linked to requirements
- **Pass Rate**: % of AC that pass tests on the first attempt

### Quality Metrics
- **Defect Density**: Defects found per AC
- **Cycle Time**: Time from AC creation to sign-off
- **Rework Rate**: % of AC that require modifications
- **Stakeholder Satisfaction**: Feedback on AC clarity

## 🏆 Best Practices

### During Creation
1. **Involve all stakeholders** in the definition
2. **Use business language** understandable to users
3. **Be specific and measurable** in the criteria
4. **Include negative scenarios** as well as positive ones
5. **Consider edge cases** and boundary conditions

### During Implementation
1. **Maintain traceability** during development
2. **Update AC** if requirements change
3. **Validate frequently** with stakeholders
4. **Document deviations** and rationale
5. **Prepare evidence** for sign-off

### During Testing
1. **Follow AC as official test scripts**
2. **Document all results** accurately
3. **Involve business users** in validation
4. **Manage issues** systematically
5. **Obtain formal sign-off** before release

## 📋 Template Sections Reference

### Common Sections in All Templates
- **General Information**: Metadata and identification
- **Description**: Context and background
- **Acceptance Criteria**: Specific to the type
- **Traceability**: Links to other documents
- **Test Results**: Evidence and outcomes
- **Sign-off**: Formal approvals

### Type-Specific Sections
- **Functional**: Focus on behavior and business logic
- **Non-Functional**: Quantitative metrics and thresholds
- **Integration**: Protocols, data flow, and system interactions
- **User Acceptance**: User experience and business value

## 📞 Contacts and Support

For questions about the Acceptance Criteria templates:

- **Product Owner**: [Responsible for business requirements]
- **Business Analyst**: [Responsible for AC documentation]
- **QA Lead**: [Responsible for test strategy]
- **Project Manager**: [Coordination and timeline]

---

*Last revision: [Date]*
*Next review: [Date]*
*Maintainer: [Name of documentation manager]*
