terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

resource "snowflake_user" "users" {
  for_each = toset(var.user_list)

  name     = each.value
  password = "TempUser123!"         # Simple static password (change if needed)
  comment  = "User created by Terraform"
  disabled = false
}
