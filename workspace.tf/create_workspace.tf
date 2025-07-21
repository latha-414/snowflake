resource "snowflake_warehouse" "test_hcp" {
  name                          = "TEST_HCP"
  warehouse_size                = "XSMALL"
  auto_suspend                  = 60
  auto_resume                   = false
  initially_suspended           = true
  comment                       = "Testing warehouse"
  max_cluster_count             = 2
  min_cluster_count             = 1
  scaling_policy                = "STANDARD"
  statement_timeout_in_seconds = 300
}

# Uncomment if needed
# resource "snowflake_warehouse_grant" "test_wh_ownership" {
#   warehouse_name     = snowflake_warehouse.test_wh.name
#   privilege          = "OWNERSHIP"
#   roles              = ["DBA"]
#   with_grant_option  = true
#
#   depends_on = [snowflake_warehouse.test_wh]
# }
