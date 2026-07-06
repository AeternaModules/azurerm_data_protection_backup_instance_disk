output "data_protection_backup_instance_disks" {
  description = "All data_protection_backup_instance_disk resources"
  value       = azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks
}
output "data_protection_backup_instance_disks_backup_policy_id" {
  description = "List of backup_policy_id values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.backup_policy_id]
}
output "data_protection_backup_instance_disks_disk_id" {
  description = "List of disk_id values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.disk_id]
}
output "data_protection_backup_instance_disks_location" {
  description = "List of location values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.location]
}
output "data_protection_backup_instance_disks_name" {
  description = "List of name values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.name]
}
output "data_protection_backup_instance_disks_protection_state" {
  description = "List of protection_state values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.protection_state]
}
output "data_protection_backup_instance_disks_snapshot_resource_group_name" {
  description = "List of snapshot_resource_group_name values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.snapshot_resource_group_name]
}
output "data_protection_backup_instance_disks_snapshot_subscription_id" {
  description = "List of snapshot_subscription_id values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.snapshot_subscription_id]
}
output "data_protection_backup_instance_disks_vault_id" {
  description = "List of vault_id values across all data_protection_backup_instance_disks"
  value       = [for k, v in azurerm_data_protection_backup_instance_disk.data_protection_backup_instance_disks : v.vault_id]
}

