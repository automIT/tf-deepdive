aca_jobs = {
  nightly_report = {
    trigger_type        = "Schedule"
    schedule_expression = "0 0 * * *" # Täglich um Mitternacht
    containers = {
      main = {
        cpu    = 0.5
        memory = "1Gi"
        env = {
          REPORT_TYPE = "nightly"
          STORAGE_ACC = "mystorage"
        }
      }
    }
    tags = {
      purpose = "analytics"
    }
  }
  manual_job = {
    trigger_type        = "Manual"
    containers = {
      main = {
        cpu    = 0.5
        memory = "1Gi"
        env = {
          REPORT_TYPE = "manual"
          STORAGE_ACC = "mystorage"
        }
      }
    }
    tags = {
      purpose = "analytics"
      environment = "production"
      team = "anderes"
    }
  }
  event_job = {
    trigger_type        = "Event"
    containers = {
      main = {
        cpu    = 0.5
        memory = "1Gi"
        env = {
          REPORT_TYPE = "manual"
          STORAGE_ACC = "mystorage"
        }
      }
    }
    tags = {
      purpose = "analytics"
      environment = "production"
    }
  }
}
