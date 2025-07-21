terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "= 0.74.3"
    }
  }
}

provider "snowflake" {}

module "users" {
  source = "../users"
  providers = {
    snowflake = snowflake
  }
}

module "roles" {
  source = "../roles"
  providers = {
    snowflake = snowflake
  }
}

module "policies" {
  source = "../policies"
  providers = {
    snowflake = snowflake
  }
}
