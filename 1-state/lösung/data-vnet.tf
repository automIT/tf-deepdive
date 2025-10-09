data "azurerm_virtual_network" "already_existing_vnet" {
  name                = "already-existing-vnet"
  resource_group_name = "already-existing-rg"
}