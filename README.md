# Azure Serverless Platform

> **Status:** 🚧 Work in Progress

Production-inspired Azure Serverless Platform built with Terraform, GitHub Actions, Jenkins, and Infrastructure as Code (IaC) best practices.

---

# Overview

This repository documents the incremental development of a modular Azure serverless platform using Terraform.

The project focuses on learning modern cloud engineering practices by combining Infrastructure as Code, CI pipelines, repository management, and Azure architecture in a public portfolio project.

The infrastructure is intentionally developed step by step to demonstrate engineering decisions, continuous improvement, and DevOps workflows.

---

# Project Goals

- Build a modular Azure Serverless Platform using Terraform
- Apply Infrastructure as Code (IaC) best practices
- Create reusable Terraform modules
- Learn Azure architecture and cloud design principles
- Implement CI pipelines with GitHub Actions and Jenkins
- Demonstrate modern DevOps workflows using feature branches and pull requests
- Continuously improve the platform through iterative development

---

# Current Status

The project is currently under active development.

The repository intentionally evolves over time and documents the complete engineering process rather than only publishing a finished solution.

New Terraform modules, Azure services, CI improvements, documentation, and architectural decisions will be added continuously.

---

# CI Strategy

This project intentionally demonstrates two different Continuous Integration approaches.

## GitHub Actions

GitHub Actions provides repository-native automation and is used to validate Terraform code directly from GitHub.

Current workflow includes:

- Terraform formatting
- Terraform validation
- Repository automation

---

## Jenkins

Jenkins is running locally inside a Docker container using a custom image with Terraform pre-installed.

The Jenkins implementation demonstrates:

- Pipeline as Code (`Jenkinsfile`)
- Multibranch Pipelines
- Feature branch validation
- Build timestamps
- Build retention policies
- Prevention of concurrent builds
- Post-build actions
- Automatic workspace cleanup

Current Jenkins pipeline:

```text
Checkout
→ Terraform Init
→ Terraform Format
→ Terraform Validate
→ Workspace Cleanup
```

The pipeline intentionally performs validation only.

No infrastructure is deployed automatically.

---

# Deployment Policy

To keep development completely cost-efficient, this repository intentionally focuses on infrastructure design, validation, code quality, and CI workflows.

Terraform commands currently executed include:

```bash
terraform fmt
terraform validate
terraform init -backend=false
```

`terraform apply` is intentionally **not** executed as part of this public project.

This allows the repository to demonstrate engineering practices, CI/CD pipelines, and Infrastructure as Code without creating unnecessary Azure costs.

Future deployment stages may be introduced as the platform matures.

---

# Technologies

- Microsoft Azure
- Terraform
- Jenkins
- GitHub Actions
- Docker
- Git
- GitHub
- Visual Studio Code

---

# Repository Structure

```text
.
├── .github/
│   └── workflows/
├── docs/
├── environments/
├── modules/
├── Jenkinsfile
└── README.md
```

---

# Roadmap

## Current

- [x] Terraform project initialization
- [x] GitHub repository
- [x] GitHub Actions CI
- [x] Jenkins Pipeline
- [x] Jenkins Multibranch Pipeline
- [x] Terraform validation pipeline

## Next Steps

- [ ] Modular Terraform architecture
- [ ] Azure Storage Account
- [ ] Azure Functions
- [ ] Azure Key Vault
- [ ] Azure Monitor
- [ ] Application Insights
- [ ] Event Grid
- [ ] Service Bus
- [ ] Environment separation (dev/test/prod)
- [ ] Terraform Plan stage
- [ ] Secure Azure authentication
- [ ] Production-ready CI/CD workflow

---

# Learning Objectives

This repository is intended to strengthen practical experience with:

- Azure
- Terraform
- Infrastructure as Code
- Jenkins
- GitHub Actions
- CI/CD
- Git workflows
- DevOps engineering
- Cloud architecture

---

# Disclaimer

This repository is maintained for learning, experimentation, and portfolio purposes.

The primary goal is to demonstrate engineering practices, Infrastructure as Code, DevOps workflows, and Azure architecture rather than maintaining permanently deployed cloud resources.

---

**Last CI Update:** 2026-08-14
Webhook test: 2026-08-14
