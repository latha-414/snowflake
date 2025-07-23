terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

provider "snowflake" {}

module "warehouse" {
  source          = "./warehouse"
  new_warehouses  = var.new_warehouses
}

module "users" {
  source            = "./users"
  user_credentials  = var.user_credentials
}

module "roles" {
  source     = "./roles"
  role_list  = var.role_list
}



