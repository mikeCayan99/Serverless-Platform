output "principal_id" {
  description = "Principal ID of the Function App managed identity"
  value       = azurerm_linux_function_app.function_app.identity[0].principal_id
}
