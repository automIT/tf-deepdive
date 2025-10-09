data "azurerm_container_registry" "train" {
  resource_group_name = var.rg_registry_name
  name                = var.registry_name
}
