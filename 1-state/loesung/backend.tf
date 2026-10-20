# Variables/functions are not allowed in a backend block:
# enter the login from participant.yaml here manually.
terraform {
  backend "azurerm" {
    resource_group_name  = "autworkshopdeepXX"
    storage_account_name = "autworkshopdeepXX"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
