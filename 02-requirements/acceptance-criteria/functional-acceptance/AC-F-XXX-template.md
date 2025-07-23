# AC-F-XXX: [Functional Acceptance Criterion Title]

## 📋 General Information
**ID**: AC-F-XXX
**Related Requirement**: [REQ-F-XXX]
**Related User Story**: [US-XXX]
**Feature/Module**: [Feature or module name]
**Priority**: Critical | High | Medium | Low
**Status**: Draft | Review | Approved | Testing | Verified | Closed
**Assigned to**: [Responsible QA Engineer]

---

## 📝 Description

### Summary
[Brief description of what is being tested and validated]

### Context
[Context of the functionality and why this criterion is important]

### Business Value
[What value this criterion brings to the business]

---

## 🎯 Main Scenario

### Happy Path
**Given** [precondition - initial state of the system]
**When** [user action or triggering event]
**Then** [expected and observable result]
**And** [additional conditions that must be verified]

### Concrete Example
**Given** that I am an authenticated user with the "Manager" role
**When** I access the "Reports" section and click on "Generate Sales Report"
**Then** the system generates a PDF report with the sales data for the last month
**And** the report is automatically downloaded in the browser
**And** the system records the action in the audit log

---

## 🔄 Alternative Scenarios

### Scenario 2: [Alternative scenario name]
**Given** [different precondition]
**When** [alternative action]
**Then** [alternative expected result]
**And** [additional conditions]

### Scenario 3: [Another scenario name]
**Given** [another precondition]
**When** [another action]
**Then** [another expected result]
**And** [other conditions]

---

## ❌ Error Scenarios

### Error Scenario 1: [Error type]
**Given** [precondition that leads to the error]
**When** [action that triggers the error]
**Then** [expected behavior in case of error]
**And** [error message or recovery action]

### Error Scenario 2: [Another error type]
**Given** [another error precondition]
**When** [another action that causes an error]
- [ ] **Response Time**: [Maximum acceptable response time]
- [ ] **Throughput**: [Volume of supported operations]
- [ ] **Resource Usage**: [Resource usage within limits]

### Security Criteria
- [ ] **Authorization**: [Appropriate authorization controls]
- [ ] **Data Protection**: [Protection of sensitive data]
- [ ] **Audit**: [Appropriate logging of actions]

---

## 🧪 Test Data Requirements

### Required Test Data
**Users**:
- [User type 1] with [specific] permissions
- [User type 2] with [different] permissions
- [User with limited permissions]

**Master Data**:
- [Data type 1]: [Quantity and characteristics]
- [Data type 2]: [Other necessary characteristics]

**Configurations**:
- [Setting 1]: [Specific value]
- [Setting 2]: [Another value]

### System Preconditions
- Database in [specific] state
- External services [available/configured]
- Cache [empty/preloaded]

---

## 🏭 Environment Requirements

### Test Environment
**Environment Type**: [Development | Staging | UAT | Production-like]
**Data Refresh**: [Data update frequency]
**External Dependencies**: [Necessary external systems]

### Specific Configurations
- **Application Settings**: [Necessary app configurations]
- **Database Setup**: [Specific database setup]
- **Network Config**: [Network configurations]
- **Security Setup**: [Security configurations]

---

## 📊 Verification Methods

### Manual Testing
**Steps**:
1. [Step 1 of manual test]
2. [Step 2 of manual test]
3. [Step 3 of manual test]

**Expected Results**: [Expected results for each step]

### Automated Testing
**Test Automation**: [If applicable, type of automation]
**Test Scripts**: [References to automated scripts]
**CI/CD Integration**: [How it is integrated into the pipeline]

### Validation Criteria
**Success Criteria**: [How to determine success]
**Failure Criteria**: [What constitutes a failure]
**Acceptance Threshold**: [Acceptance thresholds]

---

## 🔗 Traceability

### Upstream Traceability
**Business Objectives**: [OBJ-XXX] - [Reference to business objectives]
**User Stories**: [US-XXX] - [User story title]
**Functional Requirements**: [REQ-F-XXX] - [Requirement title]

### Downstream Traceability
**Test Cases**: [TC-XXX, TC-XXX] - [References to test cases]
**Defects**: [BUG-XXX] - [If there are linked bugs]
**Implementation**: [Link to commit/branch if available]

### Horizontal Traceability
**Related AC**: [AC-XXX] - [Other related criteria]
**Dependencies**: [AC-XXX] - [Criteria it depends on]
**Conflicts**: [Any conflicts with other criteria]

---

## ⚠️ Risks and Mitigation

### Testing Risks
- **[Risk 1]**: [Description of the risk]
  *Mitigation*: [Mitigation plan]

- **[Risk 2]**: [Another testing risk]
  *Mitigation*: [Another mitigation plan]

### Business Risks
- **[Business Risk]**: [Impact on the business if the criterion is not met]
  *Mitigation*: [How to mitigate the business risk]

---

## 📅 Testing Schedule

### Timeline
- **Test Preparation**: [Start date] - [End date]
- **Test Execution**: [Start date] - [End date]
- **Results Review**: [Start date] - [End date]
- **Sign-off**: [Target date]

### Milestones
- **Environment Ready**: [Date]
- **Test Data Ready**: [Date]
- **First Pass Complete**: [Date]
- **All Criteria Verified**: [Date]

---

## 📋 Test Results

### Execution Summary
| Test Run | Date   | Tester | Status    | Notes |
|----------|--------|--------|-----------|-------|
| 1        | [Date] | [Name] | [Pass/Fail] | [Notes] |
| 2        | [Date] | [Name] | [Pass/Fail] | [Notes] |

### Criteria Status
- [ ] **Main Scenario**: [Status and notes]
- [ ] **Alternative Scenarios**: [Status and notes]
- [ ] **Error Scenarios**: [Status and notes]
- [ ] **Edge Cases**: [Status and notes]

### Issues Found
| ID        | Description   | Severity     | Status      | Assignee |
|-----------|---------------|--------------|-------------|----------|
| [Issue-1] | [Description] | [High/Med/Low] | [Open/Closed] | [Name]   |

---

## ✅ Sign-off

### Review Checklist
- [ ] Clear and testable criteria
- [ ] Complete traceability
- [ ] Test data identified
- [ ] Environment requirements defined
- [ ] Risks identified and mitigated
- [ ] Realistic timeline

### Approvals
| Role             | Name   | Date   | Signature | Status           |
|------------------|--------|--------|-----------|------------------|
| QA Lead          | [Name] | ______ | ______    | [Approved/Pending] |
| Product Owner    | [Name] | ______ | ______    | [Approved/Pending] |
| Tech Lead        | [Name] | ______ | ______    | [Approved/Pending] |
| Business Analyst | [Name] | ______ | ______    | [Approved/Pending] |

---

## 📝 Change History

| Version | Date   | Author | Changes               | Impact          |
|---------|--------|--------|-----------------------|-----------------|
| 1.0     | [Date] | [Name] | Initial version       | -               |
| 1.1     | [Date] | [Name] | [Description of changes] | [Impact on test] |

---

## 📎 Attachments & References

### Supporting Documents
- [Link to mockup/wireframe]
- [Link to additional documentation]
- [References to standards/guidelines]

### Related Test Assets
- [Link to test scripts]
- [Link to test data files]
- [Link to environment setup guides]

---

*Acceptance criterion created on: [Date]*
*Last verified: [Date]*
*Next review: [Date]*
*Owner: [Responsible QA Engineer]*
