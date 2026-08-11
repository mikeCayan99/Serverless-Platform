module "resource_group" {
  source = "./modules/resource-group"

  name     = "rg-serverless-lab-dev"
  location = "West Europe"
}