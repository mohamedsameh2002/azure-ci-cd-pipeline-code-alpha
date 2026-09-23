# Azure Setup

## Objective

Prepare the Azure environment for the CI/CD pipeline.

## Azure CLI Login

```bash
az login
```

Verify the active subscription:

```bash
az account show
```

List available subscriptions:

```bash
az account list --output table
```

Set the required subscription:

```bash
az account set --subscription "<SUBSCRIPTION_ID>"
```

## Terraform Initialization

Navigate to the Terraform directory:

```bash
cd terraform
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

## Result

The Azure account and subscription were configured successfully, and Terraform was initialized and validated for the project.
