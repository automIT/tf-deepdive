locals {
  default_tags = {
    department  = "Delivery"
    team        = "ITPS"
  }

  merged_job_tags = {
    for job_name, job in var.aca_jobs :
    job_name => merge(local.default_tags, job.tags)
  }
}