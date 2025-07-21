terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

resource "snowflake_user" "demo_user" {
  name         = "SYS_lathapal"
  password     = "latha1234"
  default_role = "SYSADMIN"
}
