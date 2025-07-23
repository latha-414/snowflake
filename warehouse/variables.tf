variable "new_warehouses" {
  description = "Map of warehouse names to descriptions"
  type        = map(string)
}

variable "warehouse_owners" {
  description = "Map of warehouse names to their owner roles"
  type        = map(string)
}
