# Warehouses
variable "new_warehouses" {
  description = "Map of warehouse names and comments"
  type        = map(string)
}

# Users
variable "user_list" {
  description = "List of Snowflake users to be created"
  type        = list(string)
}

# Roles
variable "role_list" {
  description = "List of Snowflake roles to be created"
  type        = list(string)
}
