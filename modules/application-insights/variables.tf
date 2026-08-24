variable "log_analytics_workspace_name" {
  type        = string
  description = "Name of the Log Analytics Workspace"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "application_insights_name" {
  type        = string
  description = "Name of the Application Insights instance"
}