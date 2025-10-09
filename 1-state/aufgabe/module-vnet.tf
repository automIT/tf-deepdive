module "vnet" {
  source = "./module/module-vnet"
  name = "workshop20-module-vnet"
  resource_group_name = data.azurerm_resource_group.rg.name
  resource_group_location = data.azurerm_resource_group.rg.location
  address_space = "10.0.0.0/22"
}