resource "snowflake_user" "demo_user" {
  name         = "SYS_latha"
  password     = "latha123"
  default_role = "SYSADMIN"
}
