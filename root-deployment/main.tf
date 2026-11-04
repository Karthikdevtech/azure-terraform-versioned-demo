provider "azurerm" {
  features {}
}

module "website" {
  source               = "git::https://github.com/Karthikdevtech/azure-terraform-versioned-demo.git//modules/static-web?ref=v1.0.0"
  resource_group_name  = "rg-version-demo"
  location             = "East US"
  storage_account_name = "appstaticstorage12345" # Must be globally unique (lowercase letters/numbers only)
}