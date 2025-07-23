# Warehouses
variable "new_warehouses" {
  description = "Map of warehouse names and comments"
  type        = map(string)
}

# Users
variable "user_credentials" {
  description = "Map of users and their passwords"
  type        = map(string)
  sensitive   = true
}

# Roles
variable "role_list" {
  description = "List of Snowflake roles to be created"
  type        = list(string)
}
