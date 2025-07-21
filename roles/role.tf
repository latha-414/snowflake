terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = ">= 0.74.3"  # Latest recommended stable version
    }
  }
}

resource "snowflake_account_role" "demo_role" {
  name = "DEMO_ROLE"
}
