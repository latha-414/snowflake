variable "usernames" {
  description = "List of usernames"
  type        = set(string)
  # Not marked as sensitive since usernames are typically not sensitive
}

variable "user_passwords" {
  description = "Map of usernames to passwords"
  type        = map(string)
  sensitive   = true
}
