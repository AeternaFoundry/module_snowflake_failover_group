output "failover_groups_id" {
  description = "Map of id values across all failover_groups, keyed the same as var.failover_groups except keys with no id are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "failover_groups_allowed_accounts" {
  description = "Map of allowed_accounts values across all failover_groups, keyed the same as var.failover_groups except keys with no allowed_accounts are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.allowed_accounts if v.allowed_accounts != null && length(v.allowed_accounts) > 0 }
}
output "failover_groups_allowed_databases" {
  description = "Map of allowed_databases values across all failover_groups, keyed the same as var.failover_groups except keys with no allowed_databases are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.allowed_databases if v.allowed_databases != null && length(v.allowed_databases) > 0 }
}
output "failover_groups_allowed_integration_types" {
  description = "Map of allowed_integration_types values across all failover_groups, keyed the same as var.failover_groups except keys with no allowed_integration_types are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.allowed_integration_types if v.allowed_integration_types != null && length(v.allowed_integration_types) > 0 }
}
output "failover_groups_allowed_shares" {
  description = "Map of allowed_shares values across all failover_groups, keyed the same as var.failover_groups except keys with no allowed_shares are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.allowed_shares if v.allowed_shares != null && length(v.allowed_shares) > 0 }
}
output "failover_groups_from_replica" {
  description = "Map of from_replica values across all failover_groups, keyed the same as var.failover_groups except keys with no from_replica are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => one(v.from_replica) if v.from_replica != null && length(v.from_replica) > 0 }
}
output "failover_groups_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all failover_groups, keyed the same as var.failover_groups except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "failover_groups_ignore_edition_check" {
  description = "Map of ignore_edition_check values across all failover_groups, keyed the same as var.failover_groups except keys with no ignore_edition_check are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.ignore_edition_check if v.ignore_edition_check != null }
}
output "failover_groups_name" {
  description = "Map of name values across all failover_groups, keyed the same as var.failover_groups except keys with no name are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "failover_groups_object_types" {
  description = "Map of object_types values across all failover_groups, keyed the same as var.failover_groups except keys with no object_types are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => v.object_types if v.object_types != null && length(v.object_types) > 0 }
}
output "failover_groups_replication_schedule" {
  description = "Map of replication_schedule values across all failover_groups, keyed the same as var.failover_groups except keys with no replication_schedule are omitted"
  value       = { for k, v in snowflake_failover_group.failover_groups : k => one(v.replication_schedule) if v.replication_schedule != null && length(v.replication_schedule) > 0 }
}

