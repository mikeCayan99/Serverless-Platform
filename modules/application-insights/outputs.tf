output "connection_string" {
  description = "Connection string for Application Insights"
  value       = azurerm_application_insights.application_insights.connection_string
  sensitive   = true
}

