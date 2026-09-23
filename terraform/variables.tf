variable "resource_group_name" {
description = "Azure Resource Group name"
type        = string
default     = "rg-azure-cicd"
}

variable "location" {
description = "Azure region"
type        = string
default     = "East US"
}

variable "acr_name" {
description = "Azure Container Registry name"
type        = string
default     = "azurecicdregistry"
}

variable "app_service_plan_name" {
description = "App Service Plan name"
type        = string
default     = "asp-azure-cicd"
}

variable "app_name" {
description = "Azure Web App name"
type        = string
default     = "webapp-azure-cicd"
}
