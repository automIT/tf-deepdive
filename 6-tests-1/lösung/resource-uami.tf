resource "azurerm_user_assigned_identity" "container_identity" {
  name                = "tfdeepdive-uami"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  tags                = var.resource_tags
}
