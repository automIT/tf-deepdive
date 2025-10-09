terraform {
  backend "azurerm" {
    resource_group_name  = "autworkshop20"
    storage_account_name = "autworkshop20"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
