variables {
  rg_name = "autworkshop19"
}

run "simple_integration_test" {
  command = apply

  assert {
    condition     = azurerm_storage_account.tfdeepdiveacc.resource_group_name == azurerm_resource_group.rg.name
    error_message = "Storage Account scheint nicht in der richtigen Resource Group zu sein"
  }

  assert {
    condition     = azurerm_resource_group.rg.name == var.rg_name
    error_message = "Die Resource Group hat nicht den erwarteten Namen"
  }
}
