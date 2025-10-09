resource "azurerm_storage_account" "containerstorage" {
  name                     = var.storage_name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.resource_tags
}

resource "azurerm_storage_container" "container" {
  name                  = "der-manuel-container"
  storage_account_id    = azurerm_storage_account.containerstorage.id
  container_access_type = "private"
}

#moved {
#  from = azurerm_storage_account.containerstorage
#  to   = azurerm_storage_account.tfdeepdiveacc
#}

#removed {
#  from = azurerm_storage_container.container
#  lifecycle {
#    destroy = false
#  }
#}

#import {
#  to = azurerm_storage_container.container
#  id = "/subscriptions/f4d51eb3-2c3b-4728-a0f4-2d06e1169485/resourceGroups/autworkshop20/providers/Microsoft.Storage/storageAccounts/autworkshop2005/blobServices/default/containers/der-manuel-container"
#}

# import {
#   to = azurerm_storage_container.container["event-job"]
#   id = "/subscriptions/f4d51eb3-2c3b-4728-a0f4-2d06e1169485/resourceGroups/autworkshop20/providers/Microsoft.Storage/storageAccounts/autworkshop2005/blobServices/default/containers/event-job"
# }