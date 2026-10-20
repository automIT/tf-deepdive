resource "azurerm_container_app_job" "manual_job" {
  name                          = "${var.job_name}-manual-job"
  location                      = data.azurerm_resource_group.rg.location
  resource_group_name           = data.azurerm_resource_group.rg.name
  container_app_environment_id  = azurerm_container_app_environment.environment.id
  replica_timeout_in_seconds    = 1800
  tags                          = var.resource_tags

  manual_trigger_config {
    
  }

  template {
    container {
      name   = "manual-job-container"
      image  = "${data.azurerm_container_registry.train.login_server}/${var.container_image_name}:${var.container_image_tag}"
      cpu    = "0.25"
      memory = "0.5Gi"
      env {
       name = "AZURE_STORAGE_CONNECTION_STRING"
       secret_name = var.secret_name
      }
      env {
        name = "AZURE_STORAGE_CONTAINER_NAME"
        value = azurerm_storage_container.container-job-manual.name
      }
    }
  }

  secret {
    name = var.secret_name
    value =  azurerm_storage_account.containerstorage.primary_connection_string
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [data.azurerm_user_assigned_identity.container_identity.id]
  }

  registry {
    server   = data.azurerm_container_registry.train.login_server
    identity = data.azurerm_user_assigned_identity.container_identity.id
  }
}
