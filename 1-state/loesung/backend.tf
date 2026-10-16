terraform {
  backend "azurerm" {
    resource_group_name  = "autworkshopdeep10"
    storage_account_name = "autworkshopdeep10"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
