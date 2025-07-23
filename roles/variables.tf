variable "role_list" {
  description = "List of roles passed into the roles module"
  type        = list(string)
}

variable "role_owners" {
  description = "Map of roles and their new owner roles"
  type        = map(string)
}
