output "data_protection_backup_instance_disks_id" {
  description = "Map of id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_protection_backup_instance_disks_backup_policy_id" {
  description = "Map of backup_policy_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.backup_policy_id if v.backup_policy_id != null && length(v.backup_policy_id) > 0 }
}
output "data_protection_backup_instance_disks_disk_id" {
  description = "Map of disk_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.disk_id if v.disk_id != null && length(v.disk_id) > 0 }
}
output "data_protection_backup_instance_disks_location" {
  description = "Map of location values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.location if v.location != null && length(v.location) > 0 }
}
output "data_protection_backup_instance_disks_name" {
  description = "Map of name values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_protection_backup_instance_disks_protection_state" {
  description = "Map of protection_state values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.protection_state if v.protection_state != null && length(v.protection_state) > 0 }
}
output "data_protection_backup_instance_disks_snapshot_resource_group_name" {
  description = "Map of snapshot_resource_group_name values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.snapshot_resource_group_name if v.snapshot_resource_group_name != null && length(v.snapshot_resource_group_name) > 0 }
}
output "data_protection_backup_instance_disks_snapshot_subscription_id" {
  description = "Map of snapshot_subscription_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.snapshot_subscription_id if v.snapshot_subscription_id != null && length(v.snapshot_subscription_id) > 0 }
}
output "data_protection_backup_instance_disks_vault_id" {
  description = "Map of vault_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.vault_id if v.vault_id != null && length(v.vault_id) > 0 }
}

