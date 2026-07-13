variable "data_protection_backup_instance_disks" {
  description = <<EOT
Map of data_protection_backup_instance_disks, attributes below
Required:
    - backup_policy_id
    - disk_id
    - location
    - name
    - snapshot_resource_group_name
    - vault_id
Optional:
    - snapshot_subscription_id
EOT

  type = map(object({
    backup_policy_id             = string
    disk_id                      = string
    location                     = string
    name                         = string
    snapshot_resource_group_name = string
    vault_id                     = string
    snapshot_subscription_id     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_instance_disks : (
        length(v.snapshot_resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_instance_disks : (
        !endswith(v.snapshot_resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_instance_disks : (
        length(v.snapshot_resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_instance_disks : (
        v.snapshot_subscription_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.snapshot_subscription_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

