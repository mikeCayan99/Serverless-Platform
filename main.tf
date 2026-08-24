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

module "function_app" {
  source = "./modules/function-app"

  service_plan_name          = "asp-serverless-lab-dev"
  function_app_name          = "func-serverless-lab-dev"
  resource_group_name        = module.resource_group.resource_group_name
  location                   = module.resource_group.resource_group_location
  storage_account_name       = module.storage_account.storage_account_name
  storage_account_access_key = module.storage_account.storage_account_primary_access_key

  application_insights_connection_string = module.application_insights.connection_string
}

module "application_insights" {
  source = "./modules/application-insights"

  log_analytics_workspace_name = "log-serverless-lab-dev"
  application_insights_name    = "appi-serverless-lab-dev"

  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
}



