terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

resource "snowflake_user" "users" {
  for_each = var.user_credentials

  name     = each.key
  password = each.value
  comment  = "User created by Terraform"
  disabled = false
}

