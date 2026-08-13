variable "name" {
  type        = string
  description = "Name of the storage account"
}

variable "location" {
  type        = string
  description = "Azure region for the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the storage account will be created"
}

