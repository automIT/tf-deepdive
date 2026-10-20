data "azurerm_user_assigned_identity" "container_identity" {
  name                = "tfdeepdive-uami"
  resource_group_name = data.azurerm_resource_group.rg.name
}
