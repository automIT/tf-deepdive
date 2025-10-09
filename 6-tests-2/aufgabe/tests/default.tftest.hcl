variables {
  job_name = "workshopxx"
}

run "valid_storage_name" {
  command = plan

  variables {
    storage_name = "validstoragename"
  }
}


run "invalid_storage_name_expect_failure" {
  command = plan

  variables {
    storage_name = "dasisteinwirklichlangernamemitmehrals24zeichen"
  }

  expect_failures = [var.storage_name]

}

run "assert_job_name" {
  command = plan

  assert {
    condition     = azurerm_container_app_job.manual_job.name == "workshopxx-manual-job"
    error_message = "der job name stimmt nicht mit dem erwarteten wert überein"
  }

}