module "vm" {
  source = "../../../module/module-vm"
  name = "workshop15-vm"
  resource_group_name = data.azurerm_resource_group.rg.name
  resource_group_location = data.azurerm_resource_group.rg.location
  subnet_id = azurerm_subnet.snet1.id
  admin_username = "workshop"
  admin_password = "as23!AdGfjsad§sdf"
}