data "oci_database_autonomous_database_resource_pool_members" "database_autonomous_database_resource_pool_members_lookup" {
  for_each = var.database_autonomous_database_resource_pool_members_lookup

  autonomous_database_id = each.value.autonomous_database_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

