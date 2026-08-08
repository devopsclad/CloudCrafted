## CloudCrafted
Production-ready Azure Enterprise Landing Zone with modular Terraform, networking, governance, and security. Terraform modules for Azure Enterprise Landing Zone implementing enterprise networking, security, and governance.

### ☁️ CloudCrafted — Reusable Azure Terraform Modules

> **Infrastructure as Code, designed for scalability, security, reusability and automation.**

CloudCrafted is a collection of **reusable and modular Terraform components for Microsoft Azure**, designed to provision cloud infrastructure in a consistent, maintainable and scalable way.

The repository follows a **modular Infrastructure-as-Code approach**, where commonly used Azure resources are abstracted into reusable Terraform modules and consumed by environment-specific configurations.

---

### 🚀 What is CloudCrafted?

CloudCrafted demonstrates how Azure infrastructure can be designed using **Terraform modules** instead of managing individual resources repeatedly across environments.

The goal is to create infrastructure that is:

- 🔁 **Reusable** — Build once, reuse across environments
- 📦 **Modular** — Independent modules for different Azure services
- 📈 **Scalable** — Easy to extend for enterprise workloads
- 🔐 **Secure** — Supports security-focused Azure architecture
- 🧩 **Maintainable** — Clear separation between modules and environments
- ⚙️ **Automatable** — Designed to integrate with CI/CD pipelines
- 🌍 **Environment-ready** — Supports Dev, QA and Production patterns
- 📋 **Consistent** — Standardized infrastructure provisioning

---

# 🏗️ Architecture

The repository follows a layered Terraform architecture:

```text
                         ┌─────────────────────────┐
                         │       Git Repository    │
                         │        CloudCrafted     │
                         └────────────┬────────────┘
                                      │
                                      ▼
                         ┌─────────────────────────┐
                         │     Environment Layer   │
                         │                         │
                         │   DEV / QA / PROD       │
                         └────────────┬────────────┘
                                      │
                                      ▼
                         ┌─────────────────────────┐
                         │     Terraform Modules   │
                         │                         │
                         │  Resource Group         │
                         │  Virtual Network        │
                         │  Subnet                 │
                         │  NSG                    │
                         │  NIC                    │
                         │  Public IP              │
                         │  Virtual Machine        │
                         │  Storage Account        │
                         │  Bastion                │
                         │  VNet Peering           │
                         └────────────┬────────────┘
                                      │
                                      ▼
                         ┌─────────────────────────┐
                         │       Microsoft Azure   │
                         │                         │
                         │  Networking             │
                         │  Compute                │
                         │  Storage                │
                         │  Security               │
                         └─────────────────────────┘
