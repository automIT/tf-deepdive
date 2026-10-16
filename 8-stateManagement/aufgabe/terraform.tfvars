subscription_id  = "f4d51eb3-2c3b-4728-a0f4-2d06e1169485"
rg_name          = "autworkshopdeep10"
storage_name     = "autworkshopdeep1005"
registry_name    = "automittrain1"
rg_registry_name = "already-existing-rg"
job_name         = "tf-deepdive-5"

environment_variables = {
  "AZURE_STORAGE_CONNECTION_STRING" = {
    secret_name = "azure-storage-connection-string"
  }
  "AZURE_STORAGE_CONTAINER_NAME" = {
    value = "manual-job"
  }
  "CanChangeMe" = {
    value = "ChangeMe"
    #value = ""
  }
}
