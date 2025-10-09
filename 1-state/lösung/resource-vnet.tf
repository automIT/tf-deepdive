resource "azurerm_virtual_network" "vnet" {
  name                = "vnet"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "snet1" {
  name                 = "snet1"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "snet2" {
  name                 = "snet2"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "snet3" {
  name                 = "workshop15"
  resource_group_name  = "already-existing-rg"
  virtual_network_name = data.azurerm_virtual_network.already_existing_vnet.name
  address_prefixes     = ["10.1.15.0/24"]
}

resource "azurerm_virtual_network" "dynamic_vnet" {
  name                = "dynamic_subnets"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]

  dynamic "subnet" {
    for_each = local.dynamic_subnets
    content {
      name                 = subnet.key
      address_prefixes     = [subnet.value]
    }
  }
}