variable "database_autonomous_database_resource_pool_members_lookup" {
  description = <<EOT
Map of database_autonomous_database_resource_pool_members_lookup, attributes below
Required:
    - autonomous_database_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    autonomous_database_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

