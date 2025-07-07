![CI](https://github.com/zmovirzynski/TestOps/actions/workflows/ci.yml/badge.svg)
![Docker](https://img.shields.io/badge/docker-ready-blue)

# TestOps Dashboard

TestOps Dashboard is a lightweight web application designed to visualize automated test results.  
It provides a simple interface for interpreting key test metrics and is suitable for use in development, QA, and CI/CD workflows.

## Features

- Parses JUnit XML test reports
- Displays metrics such as total tests, passed, failed, errors, and skipped
- Generates interactive charts using Chart.js
- Supports containerized environments with Docker
- Ready for continuous integration with GitHub Actions

## Technologies

- Python (Flask)
- HTML/CSS
- Chart.js (for data visualization)
- JUnit XML (as initial test report format)

## Getting Started

### Clone the repository

```bash
git clone https://github.com/zmovirzynski/TestOps.git
cd TestOps
```

### Set up the environment

```bash
python -m venv venv
# On Windows:
venv\Scripts\activate
# On Unix/macOS:
source venv/bin/activate
```

### Install dependencies

```bash
pip install -r requirements.txt
```

### Run the application

```bash
python app.py
```
Then open your browser and go to: http://localhost:5000

### Docker

To build and run the project using Docker:

```bash
docker build -t testops-dashboard .
docker run -p 5000:5000 testops-dashboard
```

### CI/CD

This project includes a GitHub Actions workflow located in .github/workflows/ci.yml.
The pipeline installs dependencies and validates the application structure on every push or pull request to main.

## Planned Improvements

- Upload interface for test reports via the UI
- Persistent history of test runs
- Support for other test formats (Cypress, Allure, etc.)
- Exportable reports (PDF or HTML)
- Deployment configurations for platforms like Render, Vercel, or GitHub Pages

## License

This project is licensed under the MIT License.
