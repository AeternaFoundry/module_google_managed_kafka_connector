output "managed_kafka_connectors_id" {
  description = "Map of id values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no id are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_connectors_configs" {
  description = "Map of configs values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no configs are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.configs if v.configs != null && length(v.configs) > 0 }
}
output "managed_kafka_connectors_connect_cluster" {
  description = "Map of connect_cluster values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no connect_cluster are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.connect_cluster if v.connect_cluster != null && length(v.connect_cluster) > 0 }
}
output "managed_kafka_connectors_connector_id" {
  description = "Map of connector_id values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no connector_id are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.connector_id if v.connector_id != null && length(v.connector_id) > 0 }
}
output "managed_kafka_connectors_deletion_policy" {
  description = "Map of deletion_policy values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no deletion_policy are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "managed_kafka_connectors_location" {
  description = "Map of location values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no location are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.location if v.location != null && length(v.location) > 0 }
}
output "managed_kafka_connectors_name" {
  description = "Map of name values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no name are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_kafka_connectors_project" {
  description = "Map of project values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no project are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.project if v.project != null && length(v.project) > 0 }
}
output "managed_kafka_connectors_state" {
  description = "Map of state values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no state are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => v.state if v.state != null && length(v.state) > 0 }
}
output "managed_kafka_connectors_task_restart_policy" {
  description = "Map of task_restart_policy values across all managed_kafka_connectors, keyed the same as var.managed_kafka_connectors except keys with no task_restart_policy are omitted"
  value       = { for k, v in google_managed_kafka_connector.managed_kafka_connectors : k => one(v.task_restart_policy) if v.task_restart_policy != null && length(v.task_restart_policy) > 0 }
}

