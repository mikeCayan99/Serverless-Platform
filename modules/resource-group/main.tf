resource "azurerm_resource_group" "serverless_lab" {
  name     = var.name
  location = var.location
}