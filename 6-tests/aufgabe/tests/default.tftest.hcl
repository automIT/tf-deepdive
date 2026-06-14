# Aufgabe: Schreibe zwei Terraform-Tests für den vorhandenen Terraform-Code.
#
# Hinweis: Die benötigten Variablen (subscription_id, environment_variables, ...)
# werden automatisch aus der terraform.tfvars im Root-Modul geladen.
#
# Ausführen mit:  terraform test

# 1) Plan-Test
#    - command = plan
#    - setze eine Variable (z.B. storage_name)
#    - prüfe mit einem assert, dass die Ressource den erwarteten Wert bekommt
run "plan_storage_name" {
  command = plan

  variables {
    # TODO: eine Variable setzen
  }

  assert {
    # TODO: condition + error_message ergänzen
    condition     = true
    error_message = "TODO"
  }
}

# 2) Integration-Test
#    - command = apply
#    - setze eine Variable (z.B. job_name)
#    - prüfe mit einem assert das tatsächlich deployte Ergebnis
run "integration_job_name" {
  command = apply

  variables {
    # TODO: eine Variable setzen
  }

  assert {
    # TODO: condition + error_message ergänzen
    condition     = true
    error_message = "TODO"
  }
}
