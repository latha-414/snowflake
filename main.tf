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
  source         = "./users"
  usernames      = var.usernames
  user_passwords = var.user_passwords
}

module "roles" {
  source     = "./roles"
  role_list  = var.role_list
}



