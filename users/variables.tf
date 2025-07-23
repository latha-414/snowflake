variable "user_credentials" {
  description = "Map of usernames to passwords"
  type        = map(string)
  sensitive   = true
}
