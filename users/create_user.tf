terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = ">= 0.74.3"  # Latest recommended stable version
    }
  }
}

resource "snowflake_user" "demo_user" {
  name         = "SYS_latha"
  password     = "latha123"
  default_role = "SYSADMIN"
}
