variable "managed_kafka_connectors" {
  description = <<EOT
Map of managed_kafka_connectors, attributes below
Required:
    - connect_cluster
    - connector_id
    - location
Optional:
    - configs
    - deletion_policy
    - project
    - task_restart_policy (block):
        - maximum_backoff (optional)
        - minimum_backoff (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    connect_cluster = string
    connector_id    = string
    location        = string
    configs         = optional(map(string))
    deletion_policy = optional(string)
    project         = optional(string)
    task_restart_policy = optional(object({
      maximum_backoff = optional(string)
      minimum_backoff = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

