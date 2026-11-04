variable "resource_group_name" { type = string }
variable "location" { type = string }

resource "azurerm_storage_account" "db_logs" {
  name                     = "visitorcounterlogs123" # Must be globally unique (lowercase letters/numbers only)
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}