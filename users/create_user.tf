terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

resource "snowflake_user" "users" {
  for_each = var.usernames
  name     = each.value
  password = var.user_passwords[each.value]
  comment  = "User created by Terraform"
  disabled = false
}
