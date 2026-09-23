# Task 1: CI/CD Pipeline using Azure

## Objective

Build an automated CI/CD pipeline using Azure DevOps to build, store, and deploy a containerized web application.

## Technologies

* Microsoft Azure
* Azure Pipelines
* Azure Container Registry (ACR)
* Azure App Service
* Docker
* Terraform
* GitHub

## Architecture

```text
GitHub
   │
   ▼
Azure Pipelines
   │
   ├── Build Docker Image
   │
   ▼
Azure Container Registry
   │
   ▼
Azure App Service
   │
   ▼
Web Application
```

## Project Structure

```text
task-1-azure-cicd/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
├── docs/
│   ├── 01-azure-setup.md
│   ├── 02-container-registry.md
│   ├── 03-azure-pipeline.md
│   ├── 04-app-service-deployment.md
│   └── 05-pipeline-monitoring.md
│
├── azure-pipelines.yml
└── README.md
```

## Tasks Covered

### 1. Azure Setup

Configured the Azure subscription and initialized Terraform for infrastructure deployment.

### 2. Container Registry

Created Azure Container Registry and configured it to store Docker images.

### 3. CI/CD Pipeline

Created an Azure Pipeline that automatically:

* Builds the Docker image
* Pushes the image to ACR
* Deploys the application

### 4. App Service Deployment

Configured Azure App Service to run the container image stored in ACR.

### 5. Pipeline Monitoring

Monitored pipeline runs, reviewed execution logs, and verified the deployed application.

## CI/CD Flow

```text
Code Push
    ↓
Azure Pipeline Trigger
    ↓
Docker Build
    ↓
Push Image → ACR
    ↓
Deploy → Azure App Service
    ↓
Application Running
```

## Result

A complete container-based CI/CD pipeline was implemented using Azure tools, with Terraform used to provision the required infrastructure.
