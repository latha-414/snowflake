terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.74.3"  # Latest recommended stable version
    }
  }
}

provider "snowflake" {
  account  = var.snowflake_account       # "heygkbz-lw92235"
  username = var.snowflake_username
  password = var.snowflake_password
  role     = var.snowflake_role
}
