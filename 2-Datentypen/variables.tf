variable "user_list" {
  type    = list(string)
  default = ["alice", "bob", "alice"] # "alice" ist doppelt
}
variable "user_set" {
  type    = set(string)
  default = ["alice", "bob", "alice"] # "alice" wird gefiltert
}

variable "aca_jobs" {
  description = "Definition mehrerer Azure Container App Jobs"
  type = map(
    object({
      trigger_type        = string # "Manual", "Schedule" oder "Event"
      schedule_expression = optional(string)
      containers = map(object({
        image  = optional(string,"automitaitest.azurecr.io/schulung-test:0.0.1")
        cpu    = optional(number, 0.5)
        memory = optional(string, "1Gi")
        env    = map(string)
      }))
      tags = map(string)
    })
  )
}
