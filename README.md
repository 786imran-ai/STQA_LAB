# TESTLAB - Integrated Software Testing & Quality Assurance Platform

TestLab is a full-stack Software Testing and Quality Assurance (STQA) laboratory platform. It integrates a production-grade **To-Do List Management System** and a **Student Result Management System** with a centralized **Software Testing Laboratory** executing all 10 university syllabus experiments.

---

## 🌟 Key Features

1. **Executive Testing Dashboard**:
   - 8 live metrics cards (Total Experiments, Test Cases, Executed, Passed, Failed, Open/Closed Defects, Execution %, 100% Stmt & Branch Coverage).
   - Dynamic Chart.js visualizations (Pass/Fail doughnut, Experiment-wise execution bars, Defect severity, Defect lifecycle).
   - Real-time data computed directly from SQLite database records.

2. **Functional Applications**:
   - **To-Do List Management System**: Complete task CRUD, priority flags (Low, Medium, High), status toggling (Pending, In Progress, Completed), search, multi-criteria filtering, sorting, and multi-tenant user isolation.
   - **Student Result Management System**: Student registration, multi-subject marks entry (0–100 validation), real-time grade calculation (A, B, C, D, F) and pass/fail determination (minimum 40 marks per subject).

3. **Software Testing Laboratory (All 10 Experiments)**:
   - **Experiment 01**: Introduction to Software Testing (Division Error/Fault/Failure demonstration & Agile/Waterfall estimation).
   - **Experiment 02**: Test Planning (Static verification checklist, live login test cases TC01–TC06, IEEE 829 test plan generator).
   - **Experiment 03**: Defect Reporting & Tracking (Age eligibility validator [18, 60] & 7-stage Kanban defect lifecycle with retest failure loop).
   - **Experiment 04**: Black-Box Testing (ATM cash withdrawal simulator with denominations & statement/branch coverage tracing).
   - **Experiment 05**: Top-Down Integration Testing (Progressive 5-level stub replacement hierarchy & Defect Density / Productivity calculators).
   - **Experiment 06**: Test Metrics & Quality Measurement (100 KLOC / 50 defects / 500 hours syllabus dataset evaluation & 10-phase Student Result System testing lifecycle).
   - **Experiment 07**: Requirements Specification & IEEE 829 Plan for Student Result System.
   - **Experiment 08**: White-Box Testing (Equivalence Partitioning, Boundary Value Analysis, and Coverage.py statement/branch coverage).
   - **Experiment 09**: Test Automation with Playwright & Pytest (Headless Chromium browser automation, live console logs, and screenshot evidence).
   - **Experiment 10**: Final Case Study / Mini-Project (Execution of 12 software testing methodologies against the To-Do platform).

4. **Automated Testing & Coverage**:
   - Genuine Pytest test suites across Unit, Integration, Functional, API, Regression, and UI suites.
   - Coverage.py statement & branch coverage calculation.
   - Playwright headless Chromium automation.

5. **Report Generation**:
   - Experiment-wise IEEE 829 PDF reports.
   - Defect lifecycle summary PDF report.
   - Comprehensive Final Project PDF report.

---

## 🚀 Quick Start Guide

### 1. Requirements
- Python 3.12 (or 3.10+)
- Google Chrome / Chromium (installed automatically via Playwright)

### 2. Install Dependencies
```bash
py -3.12 -m pip install -r requirements.txt
py -3.12 -m playwright install chromium
```

### 3. Run the Application
```bash
py -3.12 run.py
```
Open your browser and navigate to:
**http://127.0.0.1:8000**

---

## 🔐 Default Demo Accounts

| Account Role | Email | Password |
|---|---|---|
| **Student / Tester** | `student@testlab.edu` | `Student123!` |
| **Teacher / Admin** | `teacher@testlab.edu` | `Teacher123!` |

*(One-click demo fill buttons are also provided directly on the login portal).*

---

## 🧪 Running Automated Tests

Run the full Pytest test suite:
```bash
py -3.12 -m pytest -v
```

Run test coverage report:
```bash
py -3.12 -m coverage run --branch -m pytest
py -3.12 -m coverage report -m
```

