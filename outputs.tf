output "data_protection_backup_instance_disks_backup_policy_id" {
  description = "Map of backup_policy_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.backup_policy_id }
}
output "data_protection_backup_instance_disks_disk_id" {
  description = "Map of disk_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.disk_id }
}
output "data_protection_backup_instance_disks_location" {
  description = "Map of location values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.location }
}
output "data_protection_backup_instance_disks_name" {
  description = "Map of name values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.name }
}
output "data_protection_backup_instance_disks_protection_state" {
  description = "Map of protection_state values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.protection_state }
}
output "data_protection_backup_instance_disks_snapshot_resource_group_name" {
  description = "Map of snapshot_resource_group_name values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.snapshot_resource_group_name }
}
output "data_protection_backup_instance_disks_snapshot_subscription_id" {
  description = "Map of snapshot_subscription_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.snapshot_subscription_id }
}
output "data_protection_backup_instance_disks_vault_id" {
  description = "Map of vault_id values across all data_protection_backup_instance_disks, keyed the same as var.data_protection_backup_instance_disks"
  value       = { for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : k => v.vault_id }
}

