resource "azurerm_virtual_network" "vnet" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  address_space       = [var.address_space]
}

resource "azurerm_subnet" "snet1" {
  name                 = "subnet1"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.address_space]
}