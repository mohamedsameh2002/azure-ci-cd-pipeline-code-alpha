# Azure App Service Deployment

## Objective

Deploy the Dockerized web application to Azure App Service using the image stored in Azure Container Registry.

## Configure App Service

The App Service and its required resources are provisioned using Terraform.

```bash
terraform plan
terraform apply
```

## Configure Container

Set the App Service to use the image from ACR:

```text
<ACR_NAME>.azurecr.io/web-app:latest
```

The App Service is configured to pull the container image from Azure Container Registry.

## Deploy Through Azure Pipelines

The pipeline updates the App Service with the latest Docker image after successfully pushing it to ACR.

```yaml
- task: AzureWebAppContainer@1
  inputs:
    azureSubscription: '<AZURE_SERVICE_CONNECTION>'
    appName: '<APP_SERVICE_NAME>'
    containers: '<ACR_NAME>.azurecr.io/web-app:latest'
```

## Verify Deployment

Check the App Service:

```bash
az webapp show \
  --name <APP_SERVICE_NAME> \
  --resource-group <RESOURCE_GROUP>
```

Open the application:

```text
https://<APP_SERVICE_NAME>.azurewebsites.net
```

## Result

The Dockerized web application was automatically deployed to Azure App Service using the image stored in Azure Container Registry.
