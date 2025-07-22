output "warehouse_names" {
  description = "List of all warehouse names created"
  value       = module.warehouse.warehouse_names
}

output "user_names" {
  description = "List of all user names created"
  value       = module.users.user_names
}

output "role_names" {
  description = "List of all role names created"
  value       = module.roles.role_names
}
