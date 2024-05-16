
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location_zone

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location_zone
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "storage_account_container" {
  name                 = var.storage_container_name
  storage_account_name = azurerm_storage_account.storage_account.name
}
