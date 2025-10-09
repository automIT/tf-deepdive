variable "subscription_id" {
  description = "The Subscription ID to deploy resources into"
  type        = string

}

variable "container_app_env_name" {
  description = "The name of the Container App Environment"
  type        = string
  default     = "Schulung-test"

}

variable "job_name" {
  description = "The name of the Container App Job"
  type        = string
  default     = "tf-deepdive"
}

variable "rg_name" {
  description = "The name of the Resource Group"
  type        = string
  default     = "tf-deepdive-rg"
}

variable "storage_name" {
  description = "The name of the Storage Account"
  type        = string
  default     = "tfdeepdivestorage"
  validation {
    condition = length(var.storage_name) >= 3 && length(var.storage_name) <= 24
    error_message = "The storage_name variable must be between 3 and 24 characters in length."
  }
}

variable "registry_name" {
    description = "The name of the Azure Container Registry."
    type        = string
    default     = "automittrain1"
}

variable "secret_name" {
  description = "The name of the secret"
  type        = string
  default     = "azure-storage-connection-string"
  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.secret_name))
    error_message = "The secret_name variable must be lowercase and can only contain \"-\"."
  }
}

variable "container_names" {
  description = "List of storage container names to create"
  type        = list(string)
  validation {
    condition     = contains(var.container_names, "manual-job") || contains(var.container_names, "event-job")
    error_message = "Container names must include 'manual-job' and 'event-job'."
  }
}

variable "resource_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {
    environment = "train"
    project     = "tf-deepdive"
    owner       = "automIT"
    customer    = "Teambank"
  }
}

variable "rg_registry_name" {
  description = "The name of the Resource Group where the ACR is located."
  type        = string
  default     = "already-existing-rg"
}

variable "container_image_name" {
  description = "The name of the container image (without registry URL)"
  type        = string
  default     = "schulung-test"
}

variable "container_image_tag" {
  description = "The tag of the container image"
  type        = string
  default     = "0.0.1"
}
