# Pipeline Monitoring

## Objective

Monitor Azure Pipeline runs and verify successful CI/CD execution.

## Monitor Pipeline

From Azure DevOps:

```text
Pipelines → Pipelines → Select Pipeline → Runs
```

Open a pipeline run to review its status, jobs, stages, and logs. Azure Pipelines provides live step output during execution and stores logs after the run completes.

## Verify Pipeline Stages

Check that the following stages complete successfully:

```text
Build Docker Image
        ↓
Push Image to ACR
        ↓
Deploy to App Service
```

## Check App Service Logs

Enable App Service logging and view the application/container logs:

```bash
az webapp log tail \
  --name <APP_SERVICE_NAME> \
  --resource-group <RESOURCE_GROUP>
```

Azure App Service supports log streaming for Linux and containerized applications.

## Verify Application

```bash
az webapp show \
  --name <APP_SERVICE_NAME> \
  --resource-group <RESOURCE_GROUP>
```

Then open:

```text
https://<APP_SERVICE_NAME>.azurewebsites.net
```

## Result

The pipeline execution was monitored from build through deployment, and App Service logs were used to verify the deployed container and troubleshoot potential issues.
