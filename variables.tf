# Warehouses
variable "new_warehouses" {
  description = "Map of warehouse names and comments"
  type        = map(string)
}

# Warehouse ownership mapping
variable "warehouse_owners" {
  description = "Map of warehouse names to their owner roles"
  type        = map(string)
}

variable "usernames" {
  description = "Set of usernames"
  type        = set(string)
}

variable "user_passwords" {
  description = "Map of usernames to passwords"
  type        = map(string)
  sensitive   = true
}

# Roles
variable "role_list" {
  description = "List of Snowflake roles to be created"
  type        = list(string)
}
