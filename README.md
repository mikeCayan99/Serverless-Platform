<<<<<<< HEAD
# Azure Serverless Platform

> **Status:** 🚧 Work in Progress

## Overview

This repository documents the development of a production-inspired Azure serverless platform using Infrastructure as Code (Terraform) and GitHub Actions.

The primary goal of this project is to deepen practical knowledge of Azure architecture, Terraform module design, CI workflows, and infrastructure engineering following modern best practices.

The implementation is intentionally developed incrementally and remains publicly accessible from the very beginning to transparently document the engineering process.

---

## Project Goals

- Build a modular Azure serverless platform using Terraform
- Follow Infrastructure as Code (IaC) best practices
- Design reusable Terraform modules
- Implement GitHub Actions for validation and quality checks
- Apply Azure architecture principles
- Continuously improve the platform through iterative development

---

## Current Status

This project is currently under active development.

New features, architectural improvements, and documentation will be added continuously as the project evolves.

---

## Deployment Policy

To keep development costs predictable, this repository intentionally focuses on infrastructure design, Terraform validation, code quality, and CI workflows.

Terraform configurations are validated using commands such as:

```bash
terraform fmt
terraform validate
```

At this stage, **`terraform apply` is intentionally not executed as part of the public project**. This avoids unnecessary Azure consumption costs while still demonstrating infrastructure design, Terraform best practices, repository organization, and CI/CD workflows.

Future deployments may be introduced as the project matures.

---

## Technologies

- Microsoft Azure
- Terraform
- GitHub Actions
- Git
- Visual Studio Code

---

## Repository Structure

```
.
├── .github/
├── docs/
├── environments/
├── modules/
└── README.md
```

## Disclaimer

This repository is intended for learning, experimentation, and portfolio purposes. It does not represent a production deployment.

The focus is on demonstrating engineering practices, Terraform design, and Azure architecture rather than maintaining permanently deployed cloud resources.

