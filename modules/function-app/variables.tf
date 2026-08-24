variable "service_plan_name" {
  type        = string
  description = "Name of the Azure Service Plan"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "function_app_name" {
  type        = string
  description = "Name of the Azure Function App"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Storage Account used by the Function App"
}

variable "storage_account_access_key" {
  type        = string
  description = "Access key of the Storage Account used by the Function App"
  sensitive   = true
}

variable "application_insights_connection_string" {
  type        = string
  description = "Application Insights connection string"
  sensitive   = true
}

