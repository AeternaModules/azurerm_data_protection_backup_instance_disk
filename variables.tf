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
  # --- Unconfirmed validation candidates, derived from azurerm_data_protection_backup_instance_disk's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: vault_id
  #   source:    [from backupvaultresources.ValidateBackupVaultID] !ok
  # path: vault_id
  #   source:    [from backupvaultresources.ValidateBackupVaultID] err != nil
  # path: disk_id
  #   source:    [from commonids.ValidateManagedDiskID] !ok
  # path: disk_id
  #   source:    [from commonids.ValidateManagedDiskID] err != nil
  # path: snapshot_resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: snapshot_resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: snapshot_resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: snapshot_resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: backup_policy_id
  #   source:    [from basebackuppolicyresources.ValidateBackupPolicyID] !ok
  # path: backup_policy_id
  #   source:    [from basebackuppolicyresources.ValidateBackupPolicyID] err != nil
  # path: snapshot_subscription_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

