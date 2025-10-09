resource "azurerm_role_assignment" "acr_pull" {
  principal_id         = azurerm_user_assigned_identity.container_identity.principal_id
  role_definition_name = "AcrPull"
  scope                = data.azurerm_container_registry.train.id
}
