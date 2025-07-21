terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = ">= 0.74.3"
    }
  }
}

provider "snowflake" {}

module "users" {
  source = "../users"
}

module "roles" {
  source = "../roles"
}

module "policies" {
  source = "../policies"
}
