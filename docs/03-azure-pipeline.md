# Azure Pipeline

## Objective

Build an automated CI/CD pipeline using Azure Pipelines.

## Pipeline Configuration

The pipeline is defined in:

```text
azure-pipelines.yml
```

The pipeline performs the following steps:

```text
Code Push
   ↓
Build Docker Image
   ↓
Push Image to ACR
   ↓
Deploy to Azure App Service
```

## Connect Azure DevOps to GitHub

Create a GitHub service connection in Azure DevOps and select the repository containing the project.

## Pipeline

Create a new pipeline in Azure DevOps and select:

```text
GitHub → Existing Azure Pipelines YAML file
```

Select:

```text
/azure-pipelines.yml
```

## Trigger

The pipeline runs automatically when changes are pushed to the configured branch.

Example:

```yaml
trigger:
- main
```

## Main Pipeline Tasks

```yaml
steps:
- checkout: self

- task: Docker@2
  inputs:
    command: buildAndPush
    repository: web-app
    containerRegistry: <ACR_SERVICE_CONNECTION>
    dockerfile: '**/Dockerfile'
    tags: |
      latest
```

## Result

Azure Pipelines was configured to automatically build the Docker image and push it to Azure Container Registry.
