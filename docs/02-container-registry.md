# Azure Container Registry

## Objective

Create and configure Azure Container Registry (ACR) to store Docker images used by the CI/CD pipeline.

## Create ACR

The registry is provisioned using Terraform.

```bash
terraform plan
terraform apply
```

Verify the registry:

```bash
az acr list --output table
```

## Login to ACR

```bash
az acr login --name <ACR_NAME>
```

## Build Docker Image

```bash
docker build -t <ACR_NAME>.azurecr.io/web-app:latest .
```

## Push Image to ACR

```bash
docker push <ACR_NAME>.azurecr.io/web-app:latest
```

## Verify Image

```bash
az acr repository list --name <ACR_NAME> --output table
```

## Result

Azure Container Registry was configured to store the Docker image that will be used by the CI/CD pipeline.
