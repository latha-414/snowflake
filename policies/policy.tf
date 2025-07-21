terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}


# resource "snowflake_network_policy" "demo_policy" {
#   name            = "DEMO_POLICY"
#   allowed_ip_list = ["192.168.1.0/24"]
# }
