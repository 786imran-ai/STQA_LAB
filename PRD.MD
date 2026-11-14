# TESTLAB
## Integrated Software Testing and Quality Assurance Platform

**Document Type:** Product Requirements Document (PRD)  
**Version:** 1.0 – Final  
**Project Category:** Academic Mini Project  
**Backend:** Python FastAPI  
**Frontend:** HTML5, CSS3, JavaScript, Bootstrap 5  
**Database:** SQLite + SQLAlchemy  
**Testing Framework:** Pytest  
**Browser Automation:** Playwright  
**Code Coverage:** Coverage.py  
**Performance Testing:** Locust  
**Documentation Standard:** IEEE 829-style Test Documentation

---

# 1. Project Overview

TestLab is a full-stack web-based Software Testing and Quality Assurance platform developed to demonstrate and execute different software testing methodologies through practical applications.

The platform integrates a functional To-Do List Management System and a Student Result Management System with a centralized Software Testing Laboratory.

Instead of creating separate applications for every laboratory experiment, TestLab provides ten independent experiment workspaces where students can perform testing activities, execute test cases, record defects, calculate quality metrics, automate tests and generate reports.

The application is designed to help students understand how software testing is performed in real-world software development environments.

## 1.1 Problem Statement

Traditional software testing laboratory exercises are frequently performed using individual programs, manually prepared test cases and separate documentation.

This creates difficulties in:
- Organizing multiple testing experiments.
- Maintaining test case records.
- Tracking software defects.
- Demonstrating testing methodologies.
- Calculating quality metrics.
- Performing automated testing.
- Preparing consistent test reports.

TestLab solves these problems by providing an integrated environment where all laboratory activities can be performed and demonstrated independently.

## 1.2 Project Objectives

1. Develop a working To-Do List Management System.
2. Develop a Student Result Management System for testing demonstrations.
3. Implement all ten software testing laboratory experiments.
4. Demonstrate black-box and white-box testing.
5. Implement test planning and estimation.
6. Perform unit, integration and system testing.
7. Implement defect reporting and tracking.
8. Calculate software quality metrics.
9. Implement automated testing using Playwright and Pytest.
10. Generate experiment-wise and final testing reports.
11. Provide a modern, interactive and easy-to-use interface.

# 2. Target Users

### Student

- Access all laboratory experiments.
- Execute testing scenarios.
- Create test cases.
- Record actual results.
- Report and track defects.
- View testing metrics.
- Generate reports.

### Teacher / Administrator

- View all experiments.
- Review test cases and execution results.
- Inspect defects.
- Review coverage and testing metrics.
- View experiment documentation.
- Download final reports.

For the academic demonstration, the application can provide a student account and a teacher/admin account.

# 3. Technology Stack

| Component | Technology |
|---|---|
| Programming Language | Python |
| Backend Framework | FastAPI |
| Frontend | HTML, CSS, JavaScript |
| UI Framework | Bootstrap 5 |
| Database | SQLite |
| ORM | SQLAlchemy |
| Validation | Pydantic |
| Authentication | Session-based authentication |
| Unit Testing | Pytest |
| API Testing | HTTPX / FastAPI TestClient |
| UI Automation | Playwright |
| Code Coverage | Coverage.py |
| Performance Testing | Locust |
| Charts | Chart.js |
| Report Generation | ReportLab |
| Version Control | Git and GitHub |

**Architecture decision:** Start with a modular monolithic FastAPI application. Do not introduce microservices, Redis or unnecessary infrastructure. Keep the application simple to install, explain and maintain.

# 4. Overall Application Architecture

The platform consists of three main layers.

### Layer 1: Functional Applications

**A. To-Do List Management System**

The primary application used for functional, unit, integration, API, system and regression testing.

**B. Student Result Management System**

A dedicated module used for requirements analysis, test planning, equivalence partitioning, boundary value analysis and grade calculation testing.

### Layer 2: Software Testing Laboratory

Ten independent experiment workspaces containing:
- Objectives and theory.
- Experiment procedures.
- Test data.
- Test cases.
- Execution functionality.
- Expected and actual results.
- Defect records.
- Execution evidence.

### Layer 3: Reporting and Analytics

A centralized dashboard containing:
- Test execution statistics.
- Defect statistics.
- Code coverage.
- Quality metrics.
- Automation results.
- Downloadable reports.

# 5. Functional Requirements

## FR-01: User Authentication

Develop an authentication system.

Features:
- User registration.
- User login.
- User logout.
- Password hashing.
- Input validation.
- Protected routes.
- Role-based access.

Test scenarios:
- Valid login.
- Invalid password.
- Empty username.
- Empty password.
- Invalid email.
- Duplicate registration.
- Unauthorized access.

## FR-02: To-Do List Management System

Develop a fully functional To-Do application.

### Features

1. Create a task.
2. View all tasks.
3. Update task details.
4. Delete a task.
5. Mark task as completed.
6. Mark task as pending.
7. Set task priority.
8. Set due dates.
9. Search tasks.
10. Filter tasks.
11. Sort tasks by creation date and priority.

### Task data model

| Field | Description |
|---|---|
| Task ID | Unique identifier |
| Title | Required, 3–100 characters |
| Description | Optional, maximum 500 characters |
| Priority | Low, Medium, High |
| Status | Pending, In Progress, Completed |
| Due Date | Valid date |
| Created At | Automatic timestamp |
| User ID | Associated user |

Business rules:
- Task title cannot be empty.
- Invalid priority values must be rejected.
- Completed tasks must be identifiable.
- Users cannot access another user's tasks.
- Deleted tasks should no longer appear in normal task listings.

## FR-03: Student Result Management System

Develop a separate functional module for software testing experiments.

### Features

- Add student information.
- Enter subject marks.
- Calculate total marks.
- Calculate percentage.
- Calculate grades.
- Determine Pass/Fail.
- Display result summary.

### Grade calculation rules

| Marks | Grade |
|---|---|
| 90–100 | A |
| 80–89 | B |
| 70–79 | C |
| 60–69 | D |
| 0–59 | F |

Validation:
- Marks must be between 0 and 100.
- Negative marks must be rejected.
- Marks above 100 must be rejected.
- Empty values must be rejected.
- Non-numeric values must be rejected.

Use a clearly documented pass-mark rule, such as 40 marks per subject.

## FR-04: Software Testing Laboratory

Provide ten independent experiment workspaces.

Each experiment must have:

1. Experiment number.
2. Experiment title.
3. Aim.
4. Objectives.
5. Theory.
6. Procedure.
7. Input data.
8. Test cases.
9. Expected output.
10. Actual output.
11. Execution status.
12. Result summary.
13. Evidence.
14. Downloadable report.

The student must be able to access each experiment independently without completing previous experiments.

# 6. Detailed Laboratory Experiments

These ten experiments must follow the activities specified in the college syllabus.

## EXPERIMENT 01 – Introduction to Software Testing

**Aim:** Understand errors, faults, failures and software estimation through practical demonstrations.

### Activity A: Division Program

Develop a Python program that accepts two numbers and performs division.

Introduce intentional errors and demonstrate how they affect program execution.

Test scenarios:

| Input A | Input B | Expected result |
|---|---|---|
| 10 | 2 | 5 |
| 20 | 4 | 5 |
| 10 | 0 | Division error handled |
| 0 | 5 | 0 |
| abc | 2 | Invalid input |
| Empty | 5 | Validation error |

Demonstrate:
- Error.
- Fault/defect.
- Failure.
- Expected output.
- Actual output.
- Error handling.

Provide an intentional-bug demonstration in a separate sample program so the actual application remains stable.

### Activity B: Agile and Waterfall Estimation

Provide an interactive project estimation module.

Inputs:
- Project size.
- Number of developers.
- Estimated effort.
- Number of modules.
- Estimated duration.

Display two approaches:

**Waterfall Model**
- Requirement analysis.
- Design.
- Implementation.
- Testing.
- Deployment.

**Agile Model**
- Sprint planning.
- Development.
- Testing.
- Review.
- Next sprint.

Outputs:
- Estimated timeline.
- Estimated effort.
- Phase-wise breakdown.
- Agile sprint schedule.
- Waterfall schedule.
- Comparison chart.

The estimation must be calculated using transparent user-defined assumptions, not presented as a guaranteed project duration.

## EXPERIMENT 02 – Test Planning and Estimation

**Aim:** Prepare verification checklists, validation test cases and an IEEE 829-style test plan.

### Activity A: Verification Checklist

Use the login module.

Example checklist:
- Are login requirements documented?
- Is password validation defined?
- Are error messages documented?
- Are security requirements defined?
- Are input constraints documented?

### Activity B: Validation Test Cases

Test the actual login functionality.

| Test ID | Scenario | Expected Result |
|---|---|---|
| TC01 | Valid credentials | Login successful |
| TC02 | Invalid password | Login rejected |
| TC03 | Empty email | Validation error |
| TC04 | Empty password | Validation error |
| TC05 | Invalid email format | Validation error |
| TC06 | Unregistered user | Login rejected |

### Activity C: IEEE 829-Style Test Plan

Generate a structured test plan containing:

1. Test Plan Identifier.
2. Introduction.
3. Test Items.
4. Features to be Tested.
5. Features Not to be Tested.
6. Test Approach.
7. Item Pass/Fail Criteria.
8. Suspension Criteria.
9. Test Deliverables.
10. Testing Tasks.
11. Environmental Requirements.
12. Responsibilities.
13. Schedule.
14. Risks and Contingencies.

Provide an option to download the test plan as PDF.

## EXPERIMENT 03 – Defect Reporting and Tracking

**Aim:** Implement age validation and demonstrate the defect lifecycle.

### Activity A: Age Validation

Create a dedicated age validation form.

Valid range: 18–60 inclusive.

| Input | Expected Output |
|---|---|
| 17 | Rejected |
| 18 | Accepted |
| 19 | Accepted |
| 30 | Accepted |
| 60 | Accepted |
| 61 | Rejected |
| -1 | Rejected |
| Empty | Validation error |
| abc | Validation error |

### Activity B: Defect Reporting

Provide a defect management interface.

Defect attributes:
- Defect ID.
- Defect Title.
- Description.
- Steps to Reproduce.
- Expected Result.
- Actual Result.
- Severity.
- Priority.
- Assigned Person.
- Date Reported.
- Current Status.

### Defect lifecycle

New → Assigned → Open → Fixed → Retest → Verified → Closed.

If a retest fails, allow the defect to return to Open.

Provide:
- Kanban board.
- Defect details page.
- Status update.
- Severity and priority filters.
- Defect history.

## EXPERIMENT 04 – Black-Box Testing Techniques

**Aim:** Demonstrate black-box testing using ATM withdrawal and separate statement/branch coverage exercises as required by the syllabus.

### Activity A: ATM Withdrawal

Build a functional ATM withdrawal simulator.

Inputs:
- Account balance.
- Withdrawal amount.
- ATM denomination rule.

Business rules:
- Amount must be greater than zero.
- Amount cannot exceed available balance.
- Withdrawal must follow the selected denomination rule.
- Balance must update only after successful withdrawal.

Prepare test cases for:
- Valid withdrawal.
- Zero withdrawal.
- Negative withdrawal.
- Insufficient balance.
- Exact balance withdrawal.
- Invalid denomination.
- Empty input.

### Activity B: Statement and Branch Coverage

Provide a separate sample program for coverage demonstration.

Display:
- Source code.
- Executed statements.
- Unexecuted statements.
- Branch outcomes.
- Coverage percentages.

Formulas:

Statement Coverage:

Executed Statements / Total Statements × 100

Branch Coverage:

Executed Branches / Total Branches × 100

**Academic clarification:** Statement and branch coverage are white-box techniques. Keep this activity in the syllabus's Experiment 4 workspace while clearly explaining the correct classification.

## EXPERIMENT 05 – Integration Testing

**Aim:** Perform top-down integration testing and calculate defect density and productivity.

### Activity A: Top-Down Integration Testing

Use the To-Do application architecture.

Integration hierarchy:

1. Main Dashboard.
2. Authentication Module.
3. Task Management Module.
4. Database Module.
5. Reporting Module.

Implement top-down integration by starting from the main control module and integrating lower-level components progressively.

Use stubs to simulate lower-level modules until their actual implementation is integrated.

Demonstrate:
- Module communication.
- API integration.
- Database connectivity.
- Integration failures.
- Successful integration.
- Stub replacement.

Provide an integration testing execution table.

### Activity B: Defect Density

Formula:

Defect Density = Total Defects / Software Size in KLOC.

### Activity C: Productivity

Formula:

Productivity = Completed Work Units / Total Working Hours.

Allow the user to specify the work unit, such as KLOC, function points or test cases.

Display:
- Input values.
- Formula.
- Calculation.
- Final result.
- Interpretation.

## EXPERIMENT 06 – Test Metrics and Quality Measurement

**Aim:** Calculate testing metrics and apply software testing phases to the Student Result System mini-project.

### Activity A: Given Dataset

Use the exact syllabus dataset:

- Data size: 100 KLOC.
- Defects: 50.
- Effort: 500 hours.

Calculate:

Defect Density:

50 / 100 = 0.5 defects per KLOC.

Defect Rate:

50 / 500 = 0.1 defects per hour.

Productivity:

100 / 500 = 0.2 KLOC per hour, assuming the 500 hours represent development effort.

Display each metric with its formula, units and interpretation.

### Activity B: Apply Testing Phases to Student Result System

Implement the following complete testing workflow:

1. Requirement Analysis.
2. Test Planning.
3. Test Case Design.
4. Test Environment Setup.
5. Test Execution.
6. Defect Reporting.
7. Retesting.
8. Regression Testing.
9. Test Closure.
10. Final Test Report.

The Student Result System must be functional, and the student should be able to demonstrate these phases using its actual requirements and test cases.

## EXPERIMENT 07 – Test Metrics and Quality Measurement

**Aim:** Prepare result calculation requirements and write a test plan using IEEE 829 format.

### Activity A: Requirements Specification

Document the Student Result System requirements.

Functional requirements:
- Student registration.
- Subject marks entry.
- Total calculation.
- Percentage calculation.
- Grade calculation.
- Pass/Fail determination.
- Result display.

Non-functional requirements:
- Input validation.
- Correct calculation.
- Consistent output.
- Data persistence.
- Error handling.

### Activity B: IEEE 829 Test Plan

Create a dedicated test plan for the Student Result System.

Include:
- Introduction.
- Test objectives.
- Requirements.
- Test items.
- Testing approach.
- Test cases.
- Pass/Fail criteria.
- Environment.
- Schedule.
- Deliverables.
- Risks.

Generate a downloadable test plan document.

## EXPERIMENT 08 – White-Box Testing Techniques

**Aim:** Design equivalence partitioning and boundary value analysis test cases and perform white-box testing on the grade calculation function.

### Activity A: Equivalence Partitioning

Use the Student Result System's grade calculation.

Valid partitions:
- 0–59.
- 60–69.
- 70–79.
- 80–89.
- 90–100.

Invalid partitions:
- Below 0.
- Above 100.
- Non-numeric input.
- Empty input.

Display:
- Partition.
- Representative test value.
- Expected output.
- Actual output.
- Execution status.

### Activity B: Boundary Value Analysis

Prepare test cases around each boundary.

| Boundary | Test Inputs |
|---|---|
| 0 | -1, 0, 1 |
| 60 | 59, 60, 61 |
| 70 | 69, 70, 71 |
| 80 | 79, 80, 81 |
| 90 | 89, 90, 91 |
| 100 | 99, 100, 101 |

Execute the cases against the actual grade calculation function.

### Activity C: White-Box Testing

Display:
- Grade calculation source code.
- Execution paths.
- Statement coverage.
- Branch coverage.
- Test inputs.
- Coverage report.

Use Coverage.py to generate actual coverage data.

Note: EP and BVA are conventionally black-box test design techniques. Explain this distinction during the demonstration while retaining the syllabus's experiment heading.

## EXPERIMENT 09 – Test Metrics and Quality Measurement / Automation

**Aim:** Automate login testing using a testing tool, collect metrics and prepare a final report.

### Activity A: Login Automation

Use Playwright and Pytest.

Automated scenarios:

1. Launch browser.
2. Open application.
3. Navigate to login.
4. Enter valid credentials.
5. Submit login.
6. Verify successful login.
7. Log out.
8. Enter invalid credentials.
9. Verify login rejection.
10. Test empty fields.
11. Verify validation messages.

### Activity B: Collect Testing Metrics

Capture:
- Total automated test cases.
- Passed tests.
- Failed tests.
- Skipped tests.
- Execution time.
- Failure messages.
- Test coverage.

### Activity C: Automation Report

Generate a report with:
- Test scenario.
- Execution status.
- Execution duration.
- Screenshot evidence.
- Error information.
- Summary.

Use real Playwright test execution results rather than simulated dashboard data.

## EXPERIMENT 10 – Final Case Study / Mini Project

**Aim:** Develop a small software project and perform different types of testing during development.

Use the To-Do List Management System as the final mini-project.

### Testing activities

**1. Unit Testing**
- Test individual functions.
- Test task creation.
- Test validation.
- Test calculations.

**2. Integration Testing**
- Test API and database communication.
- Test authentication and task modules.
- Test reporting integration.

**3. Functional Testing**
- Test every major feature.
- Verify expected application behaviour.

**4. System Testing**
- Test the complete application.

**5. Black-Box Testing**
- Test application behaviour using input/output scenarios.

**6. White-Box Testing**
- Verify statement and branch coverage.

**7. Regression Testing**
- Rerun previous tests after code changes.

**8. Smoke Testing**
- Verify critical application functionality after a new build.

**9. Sanity Testing**
- Verify specific changes after a small modification.

**10. API Testing**
- Test endpoints, status codes, validation and response structures.

**11. UI Automation Testing**
- Automate major user workflows using Playwright.

**12. Performance Testing**
- Use Locust to simulate concurrent users and measure response time.

### Final Test Report

Include:
- Project introduction.
- Requirements.
- Testing objectives.
- Testing methodology.
- Test environment.
- Test cases.
- Execution results.
- Passed and failed cases.
- Defect summary.
- Coverage results.
- Performance metrics.
- Screenshots.
- Conclusion.

# 7. Testing Management Dashboard

The main dashboard should provide an overview of all testing activities.

### Dashboard cards

- Total Experiments: 10.
- Total Test Cases.
- Executed Test Cases.
- Passed Test Cases.
- Failed Test Cases.
- Open Defects.
- Closed Defects.
- Overall Test Execution Percentage.

### Dashboard visualizations

- Pass/Fail doughnut chart.
- Experiment-wise execution bar chart.
- Defect severity chart.
- Defect lifecycle chart.
- Coverage summary.
- Recent testing activity.

All dashboard values must be calculated from stored execution data, not hardcoded sample numbers.

# 8. User Interface and User Experience

The application must look like a professional software testing management product.

### Design direction

- Modern SaaS dashboard.
- Professional dark and light themes.
- Clean typography.
- Responsive sidebar.
- Interactive tables.
- Modern dashboard cards.
- Clear status indicators.
- Search and filters.
- Charts and progress indicators.
- Responsive desktop-first layout.

### Main navigation

1. Overview.
2. To-Do Application.
3. Student Result System.
4. Experiments.
5. Test Planning.
6. Test Case Management.
7. Black-Box Testing.
8. White-Box Testing.
9. Integration Testing.
10. Defect Tracking.
11. Test Metrics.
12. Automation Testing.
13. Reports.

### Individual experiment interface

Every experiment must have four tabs:

**Overview**
- Aim.
- Objectives.
- Theory.
- Procedure.

**Test Cases**
- Test case ID.
- Input.
- Expected output.
- Actual output.
- Status.

**Execution**
- Run test.
- Enter test data.
- View results.
- Record manual execution.

**Results**
- Pass/Fail summary.
- Defects.
- Metrics.
- Screenshots.
- Download report.

The interface should prioritize usability, clarity and ease of demonstration rather than unnecessary animations.

# 9. Database Design

Use SQLite and SQLAlchemy.

Create the following tables.

### users

- id
- name
- email
- password_hash
- role
- created_at

### tasks

- id
- user_id
- title
- description
- priority
- status
- due_date
- created_at
- updated_at

### students

- id
- name
- registration_number
- email
- created_at

### student_marks

- id
- student_id
- subject
- marks
- maximum_marks

### student_results

- id
- student_id
- total_marks
- percentage
- grade
- result_status

### experiments

- id
- experiment_number
- title
- description
- objective

### test_cases

- id
- experiment_id
- test_case_id
- scenario
- input_data
- expected_result
- actual_result
- execution_type
- status

### test_runs

- id
- experiment_id
- execution_date
- total_tests
- passed
- failed
- skipped
- duration

### defects

- id
- title
- description
- steps_to_reproduce
- expected_result
- actual_result
- severity
- priority
- status
- assigned_to
- created_at
- updated_at

### test_plans

- id
- experiment_id
- plan_title
- test_approach
- test_environment
- acceptance_criteria
- created_at

### test_evidence

- id
- test_run_id
- file_path
- description
- uploaded_at

Use proper primary keys, foreign keys, constraints and relationships.

# 10. FastAPI Backend Architecture

Organize the backend into modular routers.

### Authentication

- POST /api/auth/register
- POST /api/auth/login
- POST /api/auth/logout
- GET /api/auth/me

### To-Do Management

- POST /api/tasks
- GET /api/tasks
- GET /api/tasks/{task_id}
- PUT /api/tasks/{task_id}
- DELETE /api/tasks/{task_id}
- PATCH /api/tasks/{task_id}/status

### Student Result System

- POST /api/students
- GET /api/students
- POST /api/students/{student_id}/marks
- GET /api/students/{student_id}/result
- POST /api/results/calculate

### Experiment Management

- GET /api/experiments
- GET /api/experiments/{experiment_id}
- GET /api/experiments/{experiment_id}/test-cases
- POST /api/experiments/{experiment_id}/test-cases
- POST /api/experiments/{experiment_id}/execute
- GET /api/experiments/{experiment_id}/results

### Defect Management

- POST /api/defects
- GET /api/defects
- GET /api/defects/{defect_id}
- PUT /api/defects/{defect_id}
- PATCH /api/defects/{defect_id}/status

### Metrics

- GET /api/metrics/summary
- POST /api/metrics/calculate

### Reports

- GET /api/reports/summary
- GET /api/reports/experiment/{experiment_id}
- GET /api/reports/final

# 11. Recommended Project Folder Structure

```text
testlab/
│
├── app/
│   ├── main.py
│   ├── database.py
│   ├── dependencies.py
│   │
│   ├── models/
│   │   ├── user.py
│   │   ├── task.py
│   │   ├── student.py
│   │   ├── experiment.py
│   │   ├── test_case.py
│   │   └── defect.py
│   │
│   ├── schemas/
│   ├── routers/
│   │   ├── auth.py
│   │   ├── tasks.py
│   │   ├── students.py
│   │   ├── experiments.py
│   │   ├── defects.py
│   │   ├── metrics.py
│   │   └── reports.py
│   │
│   ├── services/
│   │   ├── test_executor.py
│   │   ├── metrics.py
│   │   ├── report_generator.py
│   │   └── coverage_service.py
│   │
│   ├── templates/
│   │   ├── base.html
│   │   ├── dashboard.html
│   │   ├── login.html
│   │   ├── todos.html
│   │   ├── students.html
│   │   └── experiments/
│   │
│   └── static/
│       ├── css/
│       ├── js/
│       └── images/
│
├── experiments/
│   ├── exp01_intro/
│   ├── exp02_test_planning/
│   ├── exp03_defect_tracking/
│   ├── exp04_black_box/
│   ├── exp05_integration/
│   ├── exp06_metrics/
│   ├── exp07_result_requirements/
│   ├── exp08_white_box/
│   ├── exp09_automation/
│   └── exp10_final_project/
│
├── tests/
│   ├── unit/
│   ├── integration/
│   ├── functional/
│   ├── api/
│   ├── regression/
│   └── ui/
│
├── reports/
├── evidence/
├── requirements.txt
├── pytest.ini
├── README.md
├── .env.example
└── .gitignore
```

# 12. Non-Functional Requirements

### Performance
- Dashboard should load efficiently.
- API responses should be reasonably fast.
- Database queries should be optimized.

### Security
- Passwords must be hashed.
- Protected endpoints must require authentication.
- Users must only access their own tasks.
- Validate all incoming data.
- Protect against SQL injection and common web vulnerabilities.
- Do not expose credentials or secrets.

### Reliability
- Handle invalid inputs gracefully.
- Maintain consistent database records.
- Provide meaningful error messages.
- Preserve test execution history.

### Usability
- Simple navigation.
- Clear experiment instructions.
- Easy-to-understand results.
- Responsive interface.

### Maintainability
- Modular backend.
- Reusable services.
- Separate testing modules.
- Clear documentation.

# 13. Testing Execution Requirements

The project must support two types of test execution.

### Manual Execution

For techniques such as black-box test case design and defect lifecycle demonstration:

- Student selects a test case.
- Enters the input.
- Observes application behaviour.
- Records actual output.
- Marks the result as Pass or Fail.
- Attaches evidence if required.

### Automated Execution

For tests implemented using Pytest and Playwright:

- Student selects the automated experiment.
- Backend executes the appropriate approved test suite.
- Actual results are collected.
- Execution duration is recorded.
- Passed and failed test cases are displayed.
- Screenshots and logs are stored.

Important: Do not allow arbitrary Python code to be executed through a public web form. Execute only predefined, trusted test suites on the server.

Manual and automated results must be labelled separately.

# 14. Reporting System

The platform must generate three types of reports.

### A. Experiment Report

- Experiment number.
- Aim.
- Objectives.
- Theory.
- Procedure.
- Test cases.
- Execution results.
- Defects.
- Conclusion.

### B. Defect Report

- Defect ID.
- Description.
- Severity.
- Priority.
- Status.
- Steps to reproduce.
- Expected result.
- Actual result.

### C. Final Project Report

- Introduction.
- Problem statement.
- Objectives.
- Requirements.
- Architecture.
- Technology stack.
- Testing methodology.
- Test cases.
- Execution summary.
- Defect summary.
- Coverage report.
- Performance results.
- Screenshots.
- Conclusion.

Reports must be downloadable as PDF.

# 15. Development Roadmap

Build the project in the following sequence.

### Phase 1 – Foundation

- Initialize FastAPI.
- Configure SQLite.
- Create database models.
- Implement authentication.
- Build To-Do CRUD.
- Build Student Result System.

### Phase 2 – Dashboard

- Create main dashboard.
- Create sidebar navigation.
- Build experiment listing.
- Create individual experiment pages.
- Add responsive design.

### Phase 3 – Experiments 1–5

- Division and estimation.
- Test planning.
- Age validation and defects.
- ATM and coverage demonstrations.
- Top-down integration and metrics.

### Phase 4 – Experiments 6–10

- Software metrics.
- Student Result requirements and planning.
- EP, BVA and white-box testing.
- Automated login.
- Final To-Do case study.

### Phase 5 – Reporting

- Experiment reports.
- Test execution reports.
- Defect reports.
- Coverage reports.
- Final PDF report.

### Phase 6 – Final Validation

- Run all automated tests.
- Verify manual test cases.
- Check database persistence.
- Verify all 10 experiment pages.
- Test report generation.
- Prepare final demonstration.

# 16. Acceptance Criteria

The project is accepted when all of the following conditions are satisfied.

1. User authentication works correctly.
2. To-Do CRUD operations work.
3. Student Result System works correctly.
4. All ten experiments have independent workspaces.
5. Every experiment has aim, theory and procedure.
6. Test cases can be created and executed.
7. Manual and automated test results are distinguishable.
8. Defects can be created and tracked through their lifecycle.
9. Test plans follow the requested IEEE 829-style structure.
10. Agile and Waterfall estimation demonstrations work.
11. ATM black-box testing works.
12. Top-down integration is demonstrated.
13. Defect density and productivity calculations work.
14. EP and BVA test cases are available.
15. Statement and branch coverage reports are generated.
16. Playwright login automation works.
17. Testing metrics are collected.
18. Final test reports can be downloaded.
19. All experiment results are stored persistently.
20. The complete project can be demonstrated through one web interface.

# 17. Final Project Deliverables

- Complete FastAPI application.
- To-Do List Management System.
- Student Result Management System.
- Ten experiment workspaces.
- Database schema.
- Test planning documentation.
- Test case documentation.
- Defect management system.
- Pytest test suite.
- Playwright automation suite.
- Code coverage reports.
- Metrics calculations.
- Experiment-wise PDF reports.
- Final project report.
- GitHub repository.
- README and installation instructions.

# 18. Final Product Vision

TestLab should function as a miniature Software Quality Assurance environment.

A teacher should be able to open the application, select any of the ten experiments, understand its objective, provide test inputs, execute or inspect test cases, observe the results, track defects and download the report.

The project must prioritize real testing execution, accurate calculations, clear documentation and an easy-to-use interface.

**Final Outcome:** One integrated web application demonstrating all ten Software Testing Laboratory experiments through practical, independent and reproducible testing activities.