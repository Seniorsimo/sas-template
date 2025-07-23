# AC-NF-XXX: [Non-Functional Acceptance Criterion Title]

## 📋 General Information
**ID**: AC-NF-XXX
**Category**: Performance | Security | Usability | Reliability | Scalability | Compatibility
**Related Requirement**: [REQ-NF-XXX]
**Quality Attribute**: [Specific quality attribute]
**Priority**: Critical | High | Medium | Low
**Status**: Draft | Review | Approved | Testing | Verified | Closed
**Assigned to**: [Performance/Security/QA Engineer]

---

## 📝 Description

### Summary
[Brief description of the quality attribute to be verified]

### Business Context
[Why this quality attribute is important for the business]

### User Impact
[How this attribute affects the user experience]

### Definition of Success
[What "success" means for this criterion]

---

## 📊 Metrics and Targets

### Primary Metric
**Metric Name**: [Name of the main metric]
**Unit of Measure**: [Seconds | Percentage | Transactions/sec | GB | etc.]
**Target Value**: [Target value to be achieved]
**Minimum Acceptable Value**: [Minimum threshold for passing]
**Optimal Value**: [Ideal value to be achieved]
**Current Baseline**: [Current value if available]

### Secondary Metrics
- **[Metric 2]**: Target: [Value] [Unit] | Min: [Value] | Optimal: [Value]
- **[Metric 3]**: Target: [Value] [Unit] | Min: [Value] | Optimal: [Value]
- **[Metric 4]**: Target: [Value] [Unit] | Min: [Value] | Optimal: [Value]

### SLA/SLO Requirements
**Service Level Objective**: [SLO definition]
**Service Level Agreement**: [SLA with stakeholders if applicable]
**Availability Target**: [% uptime required]
**Performance Threshold**: [Performance thresholds]

---

## ⚙️ Measurement Conditions

### Test Environment
**Environment**: Production-like | Staging | Performance Lab
**Hardware Specs**: [Hardware specifications of the test environment]
**Software Configuration**: [Software configurations]
**Network Conditions**: [Network conditions]

### Load Conditions
**Normal Load**: [Definition of normal load]
**Peak Load**: [Definition of peak load]
**Stress Load**: [Definition of stress load]
**User Concurrency**: [Number of simultaneous users]

### Data Volume
**Dataset Size**: [Size of test data]
**Transaction Volume**: [Volume of transactions]
**Historical Data**: [Amount of historical data]
**Growth Projection**: [Projected growth]

---

## 🧪 Test Scenarios

### Scenario 1: Normal Operations
**Metric**: [Metric to be measured]
**Conditions**: [Normal load conditions]
**Expected Result**: [Expected result]
**Acceptance Criteria**: [Acceptance criteria]

**Given** the system is under normal load conditions
**When** [specific action or load]
**Then** [metric] must be <= [target value]
**And** [other conditions must be met]

### Scenario 2: Peak Load
**Metric**: [Metric to be measured]
**Conditions**: [Peak load conditions]
**Expected Result**: [Expected result]
**Acceptance Criteria**: [Acceptance criteria]

**Given** the system is under peak load ([X] concurrent users)
**When** [specific action under load]
**Then** [metric] must remain <= [threshold value]
**And** the system must remain responsive

### Scenario 3: Stress Test
**Metric**: [Metric to be measured]
**Conditions**: [Stress conditions]
**Expected Result**: [Expected result]
**Acceptance Criteria**: [Acceptance criteria]

**Given** the system is under a stress test ([Y] times the normal load)
**When** [action under stress]
**Then** the system must [expected behavior]
**And** it must recover within [time] when the load decreases

---

## ✅ Detailed Acceptance Criteria

### Performance Criteria (if applicable)
- [ ] **Response Time**: [Metric] <= [Value] under normal load
- [ ] **Throughput**: [Metric] >= [Value] transactions/second
- [ ] **Resource Utilization**: CPU <= [%], Memory <= [%], Disk I/O <= [%]
- [ ] **Concurrent Users**: Supports >= [Number] simultaneous users
- [ ] **Recovery Time**: Full recovery within [Time] after an incident

### Security Criteria (if applicable)
- [ ] **Authentication**: [Method] implemented correctly
- [ ] **Authorization**: Access controls work for all roles
- [ ] **Data Encryption**: Sensitive data encrypted in transit and at rest
- [ ] **Audit Logging**: All critical actions are logged
- [ ] **Vulnerability**: Zero [High/Critical] vulnerabilities in security scan

### Usability Criteria (if applicable)
- [ ] **Task Completion**: [%] of users complete main tasks
- [ ] **Learning Curve**: New users productive within [Time]
- [ ] **Error Rate**: <= [%] user errors per task
- [ ] **Satisfaction Score**: Score >= [Value] in user satisfaction survey
- [ ] **Accessibility**: [WCAG Level] compliance achieved

### Reliability Criteria (if applicable)
- [ ] **Uptime**: [%] availability maintained
- [ ] **MTBF**: Mean Time Between Failures >= [Time]
- [ ] **MTTR**: Mean Time To Recovery <= [Time]
- [ ] **Error Rate**: <= [%] error rate under normal conditions
- [ ] **Data Consistency**: Zero data loss during failures

---

## 🔧 Tools and Methodologies

### Testing Tools
**Primary Tool**: [Main tool name]
**Supporting Tools**: [Other tools used]
**Monitoring Tools**: [Monitoring tools]
**Analysis Tools**: [Tools for results analysis]

### Test Methodology
**Approach**: [Test methodology used]
**Test Duration**: [Test duration per scenario]
**Warm-up Period**: [Warm-up time]
**Measurement Period**: [Measurement period]
**Cool-down Period**: [Cool-down time]

### Data Collection
**Metrics Collection**: [How metrics are collected]
**Sampling Rate**: [Sampling frequency]
**Storage**: [Where metrics are stored]
**Reporting**: [How results are reported]

---

## 📊 Baseline and Benchmarking

### Current Baseline
**Current Performance**: [Current performance if known]
**Historical Trends**: [Historical trends]
**Seasonal Variations**: [Seasonal variations]

### Industry Benchmarks
**Industry Standard**: [Industry standard]
**Competitor Analysis**: [Competitor analysis if available]
**Best Practices**: [Industry best practices]

### Improvement Targets
**Short Term**: [Short-term target]
**Medium Term**: [Medium-term target]
**Long Term**: [Long-term target]

---

## 🔗 Traceability

### Business Requirements
**Business Objectives**: [OBJ-XXX] - [Related business objective]
**SLA Commitments**: [SLA commitments with customers]
**Regulatory Requirements**: [Regulatory requirements if applicable]

### Technical Requirements
**Non-Functional Req**: [REQ-NF-XXX] - [Parent non-functional requirement]
**Functional Dependencies**: [REQ-F-XXX] - [Related functional requirements]
**Architecture Decisions**: [Related architectural decisions]

### Related Criteria
**Related AC**: [AC-XXX] - [Other related criteria]
**Dependencies**: [AC-XXX] - [Criteria it depends on]
**Conflicts**: [Any conflicts or trade-offs]

---

## ⚠️ Risks and Mitigation

### Testing Risks
- **[Risk 1]**: [e.g., Unrepresentative test environment]
  *Impact*: [Impact on results validity]
  *Mitigation*: [Mitigation plan]

- **[Risk 2]**: [e.g., Test tool limitations]
  *Impact*: [Impact on accuracy]
  *Mitigation*: [Alternative plan]

### Implementation Risks
- **[Impl Risk 1]**: [e.g., Performance degradation in production]
  *Impact*: [Impact on business]
  *Mitigation*: [Monitoring and alerting]

### Business Risks
- **[Business Risk]**: [e.g., SLA breach]
  *Impact*: [Business consequences]
  *Mitigation*: [Contingency plan]

---

## 📅 Testing Schedule

### Test Planning Phase
- **Test Plan Creation**: [Start date] - [End date]
- **Environment Setup**: [Start date] - [End date]
- **Tool Configuration**: [Start date] - [End date]
- **Test Data Preparation**: [Start date] - [End date]

### Test Execution Phase
- **Baseline Testing**: [Start date] - [End date]
- **Scenario Testing**: [Start date] - [End date]
- **Results Analysis**: [Start date] - [End date]
- **Report Generation**: [Start date] - [End date]

### Key Milestones
- **Environment Ready**: [Date]
- **First Test Run**: [Date]
- **All Scenarios Complete**: [Date]
- **Results Validated**: [Date]
- **Sign-off**: [Date]

---

## 📈 Test Results

### Test Execution Summary
| Test Scenario | Date   | Duration | Status    | Result          | Notes |
|---------------|--------|----------|-----------|-----------------|-------|
| Normal Load   | [Date] | [Duration] | [Pass/Fail] | [Metric value] | [Notes] |
| Peak Load     | [Date] | [Duration] | [Pass/Fail] | [Metric value] | [Notes] |
| Stress Test   | [Date] | [Duration] | [Pass/Fail] | [Metric value] | [Notes] |

### Metrics Summary
| Metric      | Target | Achieved | Status    | Gap Analysis |
|-------------|--------|----------|-----------|--------------|
| [Metric 1]  | [Target] | [Actual] | [Pass/Fail] | [Gap if any] |
| [Metric 2]  | [Target] | [Actual] | [Pass/Fail] | [Gap if any] |

### Performance Trends
[Charts or description of performance trends]

### Issues Identified
| ID        | Description   | Impact       | Severity            | Status      | Owner |
|-----------|---------------|--------------|---------------------|-------------|-------|
| [Issue-1] | [Description] | [High/Med/Low] | [Critical/High/Med/Low] | [Open/Closed] | [Name]  |

---

## 🔧 Tuning and Optimization

### Optimization Opportunities
- **[Area 1]**: [Optimization opportunity]
- **[Area 2]**: [Another opportunity]

### Configuration Changes
- **[Config 1]**: [Recommended configuration change]
- **[Config 2]**: [Another change]

### Infrastructure Recommendations
- **[Infra 1]**: [Infrastructural recommendation]
- **[Infra 2]**: [Another recommendation]

---

## ✅ Sign-off and Acceptance

### Review Checklist
- [ ] Clearly defined and measurable metrics
- [ ] Appropriate and representative test conditions
- [ ] Adequate tools and methodologies
- [ ] Baselines and benchmarks identified
- [ ] Risks identified and mitigated
- [ ] Realistic and feasible timeline

### Performance Acceptance
- [ ] All performance targets met
- [ ] System stable under normal load
- [ ] Appropriate recovery after stress test
- [ ] Monitoring and alerting in place

### Business Acceptance
- [ ] SLA requirements met
- [ ] Acceptable business impact
- [ ] Operational costs within budget
- [ ] Stakeholders satisfied

### Approvals
| Role                 | Name   | Date   | Signature | Comments |
|----------------------|--------|--------|-----------|----------|
| Performance Engineer | [Name] | ______ | ______    | [Comments] |
| Technical Architect  | [Name] | ______ | ______    | [Comments] |
| Product Owner        | [Name] | ______ | ______    | [Comments] |
| Operations Manager   | [Name] | ______ | ______    | [Comments] |

---

## 📝 Change History

| Version | Date   | Author | Changes     | Impact on Testing |
|---------|--------|--------|-------------|-------------------|
| 1.0     | [Date] | [Name] | Initial version | -                 |
| 1.1     | [Date] | [Name] | [Changes]   | [Impact]          |

---

## 📎 Supporting Documentation

### Test Artifacts
- [Link to detailed test plan]
- [Link to test scripts/automation]
- [Link to raw test data]
- [Link to environment setup guide]

### Reference Materials
- [Link to performance requirements doc]
- [Link to architecture documentation]
- [Link to capacity planning docs]
- [Link to industry benchmarks]

### Monitoring Setup
- [Link to monitoring configuration]
- [Link to alerting rules]
- [Link to dashboard setup]

---

*Non-functional acceptance criterion created on: [Date]*
*Last validation: [Date]*
*Next review: [Date]*
*Performance Engineer: [Responsible person's name]*
