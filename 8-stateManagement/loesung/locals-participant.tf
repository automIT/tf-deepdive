# The login is maintained centrally in ../../participant.yaml.
# Variables that are set explicitly (e.g. in tests) take precedence over the derived names.
locals {
  participant            = yamldecode(file("${path.module}/../../participant.yaml")).login
  rg_name                = coalesce(var.rg_name, local.participant)
  storage_name           = coalesce(var.storage_name, "${local.participant}05")
  container_app_env_name = coalesce(var.container_app_env_name, "${local.participant}-env")
}
