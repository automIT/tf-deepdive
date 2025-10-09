module "vnet" {
  for_each = local.vnets
  source = "./module/module-vnet"
  name = each.key
  resource_group_name = data.azurerm_resource_group.rg.name
  resource_group_location = data.azurerm_resource_group.rg.location
  address_space = each.value
}