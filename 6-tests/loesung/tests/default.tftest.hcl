# Terraform Tests für die Lifecycle-Übung
#
# Die benötigten Variablen (subscription_id, environment_variables, ...)
# werden automatisch aus der terraform.tfvars im Root-Modul geladen.

# 1) Plan-Test: setzt eine Variable und prüft das geplante Ergebnis (kein Deployment)
run "plan_storage_name" {
  command = plan

  variables {
    storage_name = "tfdeepdiveplan01"
  }

  assert {
    condition     = azurerm_storage_account.containerstorage.name == "tfdeepdiveplan01"
    error_message = "Der Name des Storage Accounts entspricht nicht der gesetzten Variable"
  }
}

# 2) Integration-Test: setzt eine Variable, deployt die Ressourcen (apply) und prüft sie
run "integration_job_name" {
  command = apply

  variables {
    job_name = "tf-deepdive-test"
  }

  assert {
    condition     = azurerm_container_app_job.manual_job.name == "tf-deepdive-test-manual-job"
    error_message = "Der Name des Container App Jobs entspricht nicht dem erwarteten Wert"
  }
}
