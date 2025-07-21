terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = ">= 0.74.3"  # Latest recommended stable version
    }
  }
}

provider "snowflake" {
  account  = "HEYGKBZ-LW92235"
  username = "LATHA"
  password = "Lathapaladugu@1722"
  role     = "ACCOUNTADMIN" 
}
