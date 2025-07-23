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

resource "snowflake_grant_privileges_to_role" "role_ownership_transfer" {
  for_each = var.role_owners

  privileges         = ["OWNERSHIP"]
  object_type        = "ROLE"
  object_name        = each.key        # Example: "stage_role"
  role_name          = each.value      # Example: "SECURITYADMIN"
  with_grant_option  = true
}
