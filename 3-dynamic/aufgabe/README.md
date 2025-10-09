<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.8 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_app_environment.environment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment) | resource |
| [azurerm_container_app_job.manual_job](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_job) | resource |
| [azurerm_role_assignment.acr_pull](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.containerstorage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_user_assigned_identity.container_identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [azurerm_container_registry.train](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/container_registry) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_app_env_name"></a> [container\_app\_env\_name](#input\_container\_app\_env\_name) | The name of the Container App Environment | `string` | `"Schulung-test"` | no |
| <a name="input_container_image_name"></a> [container\_image\_name](#input\_container\_image\_name) | The name of the container image (without registry URL) | `string` | `"schulung-test"` | no |
| <a name="input_container_image_tag"></a> [container\_image\_tag](#input\_container\_image\_tag) | The tag of the container image | `string` | `"0.0.1"` | no |
| <a name="input_job_name"></a> [job\_name](#input\_job\_name) | The name of the Container App Job | `string` | `"tf-deepdive"` | no |
| <a name="input_registry_name"></a> [registry\_name](#input\_registry\_name) | The name of the Azure Container Registry. | `string` | `"automittrain1"` | no |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | A mapping of tags to assign to the resource. | `map(string)` | <pre>{<br/>  "customer": "Teambank",<br/>  "environment": "train",<br/>  "owner": "automIT",<br/>  "project": "tf-deepdive"<br/>}</pre> | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the Resource Group | `string` | `"tf-deepdive-rg"` | no |
| <a name="input_rg_registry_name"></a> [rg\_registry\_name](#input\_rg\_registry\_name) | The name of the Resource Group where the ACR is located. | `string` | `"already-existing-rg"` | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | The name of the secret | `string` | `"azure-storage-connection-string"` | no |
| <a name="input_storage_name"></a> [storage\_name](#input\_storage\_name) | The name of the Storage Account | `string` | `"tfdeepdivestorage"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The Subscription ID to deploy resources into | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->