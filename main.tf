resource "snowflake_failover_group" "failover_groups" {
  for_each = var.failover_groups

  name                      = each.value.name
  allowed_accounts          = each.value.allowed_accounts
  allowed_databases         = each.value.allowed_databases
  allowed_integration_types = each.value.allowed_integration_types
  allowed_shares            = each.value.allowed_shares
  ignore_edition_check      = each.value.ignore_edition_check
  object_types              = each.value.object_types

  dynamic "from_replica" {
    for_each = each.value.from_replica != null ? [each.value.from_replica] : []
    content {
      name                = from_replica.value.name
      organization_name   = from_replica.value.organization_name
      source_account_name = from_replica.value.source_account_name
    }
  }

  dynamic "replication_schedule" {
    for_each = each.value.replication_schedule != null ? [each.value.replication_schedule] : []
    content {
      dynamic "cron" {
        for_each = replication_schedule.value.cron != null ? [replication_schedule.value.cron] : []
        content {
          expression = cron.value.expression
          time_zone  = cron.value.time_zone
        }
      }
      interval = replication_schedule.value.interval
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

