terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

resource "snowflake_warehouse" "new" {
  for_each = var.new_warehouses

  name                          = each.key
  comment                       = each.value
  warehouse_size                = "XSMALL"  # hardcoded size
  auto_suspend                  = 60
  auto_resume                   = false
  initially_suspended           = true
  max_cluster_count             = 2
  min_cluster_count             = 1
  scaling_policy                = "STANDARD"
  statement_timeout_in_seconds = 300
}

# Grant ownership privileges on warehouses
resource "snowflake_grant_privileges_to_role" "warehouse_ownership" {
  for_each = var.new_warehouses

  object_type        = "WAREHOUSE"
  object_name        = snowflake_warehouse.new[each.key].name
  privileges         = ["OWNERSHIP"]
  roles              = ["SYSADMIN"]
  with_grant_option  = true
  depends_on         = [snowflake_warehouse.new]
}


