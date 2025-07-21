terraform {
  required_providers {
    snowflake = {
      source  = "Snowflakedb/snowflake"
      version = ">= 0.74.3"  # Latest recommended stable version
    }
  }
}

provider "snowflake" {}
