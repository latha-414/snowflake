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
  source = "./users"
}

module "roles" {
  source = "./roles"
}

module "policies" {
  source = "./policies"
}

module "warehouse" {
  source = "./warehouse"
}


