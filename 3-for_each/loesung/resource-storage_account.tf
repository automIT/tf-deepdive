resource "azurerm_storage_account" "containerstorage" {
  name                     = local.storage_name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.resource_tags
}

resource "azurerm_storage_container" "container" {
  for_each              = toset(var.container_names)
  name                  = each.key
  storage_account_id    = azurerm_storage_account.containerstorage.id
  container_access_type = "private"
}
