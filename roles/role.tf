terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

resource "snowflake_role" "demo_role" {
  name = "DEMO_ROLE"
}
