terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

resource "snowflake_role" "roles" {
  for_each = toset(var.role_list)

  name    = each.value
  comment = "Role created by Terraform"
}
