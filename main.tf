module "resource_group" {
  source = "./modules/resource-group"

  name     = "rg-serverless-lab-dev"
  location = "West Europe"
}

module "storage_account" {
  source = "./modules/storage-account"

  name                = "stserverlesslabdev"
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}

