variable "failover_groups" {
  description = <<EOT
Map of failover_groups, attributes below
Required:
    - name
Optional:
    - allowed_accounts
    - allowed_databases
    - allowed_integration_types
    - allowed_shares
    - ignore_edition_check
    - object_types
    - from_replica (block):
        - name (required)
        - organization_name (required)
        - source_account_name (required)
    - replication_schedule (block):
        - cron (optional, block):
            - expression (required)
            - time_zone (required)
        - interval (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                      = string
    allowed_accounts          = optional(set(string))
    allowed_databases         = optional(set(string))
    allowed_integration_types = optional(set(string))
    allowed_shares            = optional(set(string))
    ignore_edition_check      = optional(bool)
    object_types              = optional(set(string))
    from_replica = optional(object({
      name                = string
      organization_name   = string
      source_account_name = string
    }))
    replication_schedule = optional(object({
      cron = optional(object({
        expression = string
        time_zone  = string
      }))
      interval = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

