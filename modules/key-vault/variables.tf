variable "key_vault_name" {
  type        = string
  description = "Name of the Azure Key Vault"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "tenant_id" {
  type        = string
  description = "Microsoft Entra tenant ID"
}

variable "principal_id" {
  type        = string
  description = "Principal ID of the Function App managed identity"
}

