terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
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

