output "storage_account_name" {
  description = "Name of the storage account"
  value       = azurerm_storage_account.storage_account.name
}

output "storage_account_id" {
  description = "ID of the storage account"
  value       = azurerm_storage_account.storage_account.id
}

output "storage_account_primary_access_key" {
  description = "Primary access key of the storage account"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}