resource "google_managed_kafka_connector" "managed_kafka_connectors" {
  for_each = var.managed_kafka_connectors

  connect_cluster = each.value.connect_cluster
  connector_id    = each.value.connector_id
  location        = each.value.location
  configs         = each.value.configs
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "task_restart_policy" {
    for_each = each.value.task_restart_policy != null ? [each.value.task_restart_policy] : []
    content {
      maximum_backoff = task_restart_policy.value.maximum_backoff
      minimum_backoff = task_restart_policy.value.minimum_backoff
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

