provider "azurerm" {
  features {}
}

module "compute" {
  source              = "git::https://github.com/Karthikdevtech/azure-terraform-versioned-demo.git//modules/compute-vm?ref=v2.0.0"
  resource_group_name = "rg-version-demo"
  location            = "East US"
  admin_password      = "P@ssw0rd1234!"
}

module "database" {
  source              = "git::https://github.com/Karthikdevtech/azure-terraform-versioned-demo.git//modules/tracking-db?ref=v2.1.0"
  resource_group_name = "rg-version-demo"
  location            = "East US"
}