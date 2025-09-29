resource "azurerm_resource_group" "rg" {
  name     = "resources"
  location = "West Europe"
}

variable "storage_name" {
    default = ["sa1", "sa2", "sa3", "sa4", "sa5", "sa6", "sa7", "sa8", "sa9", "sa10"]
}

locals {
  transform = {for v in var.storage_name : v => v}
}

variable "sa_settings" {
    default = {
        account_tier = "Standard"
        account_replication_type = "GRS"
        environment = "staging"
    }
}

resource "azurerm_storage_account" "storage_account" {
    for_each = local.transform
    name                     = each.value
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = var.sa_settings.account_tier
    account_replication_type = var.sa_settings.account_replication_type

    tags = {
        environment = var.sa_settings.environment
    }
}