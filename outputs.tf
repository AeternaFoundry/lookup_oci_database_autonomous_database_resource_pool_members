output "database_autonomous_database_resource_pool_members_lookup_id" {
  description = "Map of id values across all database_autonomous_database_resource_pool_members_lookup, keyed the same as var.database_autonomous_database_resource_pool_members_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_autonomous_database_resource_pool_members.database_autonomous_database_resource_pool_members_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_autonomous_database_resource_pool_members_lookup_autonomous_database_id" {
  description = "Map of autonomous_database_id values across all database_autonomous_database_resource_pool_members_lookup, keyed the same as var.database_autonomous_database_resource_pool_members_lookup except keys with no autonomous_database_id are omitted"
  value       = { for k, v in data.oci_database_autonomous_database_resource_pool_members.database_autonomous_database_resource_pool_members_lookup : k => v.autonomous_database_id if v.autonomous_database_id != null && length(v.autonomous_database_id) > 0 }
}
output "database_autonomous_database_resource_pool_members_lookup_filter" {
  description = "Map of filter values across all database_autonomous_database_resource_pool_members_lookup, keyed the same as var.database_autonomous_database_resource_pool_members_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_autonomous_database_resource_pool_members.database_autonomous_database_resource_pool_members_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_autonomous_database_resource_pool_members_lookup_resource_pool_member_collection" {
  description = "Map of resource_pool_member_collection values across all database_autonomous_database_resource_pool_members_lookup, keyed the same as var.database_autonomous_database_resource_pool_members_lookup except keys with no resource_pool_member_collection are omitted"
  value       = { for k, v in data.oci_database_autonomous_database_resource_pool_members.database_autonomous_database_resource_pool_members_lookup : k => v.resource_pool_member_collection if v.resource_pool_member_collection != null && length(v.resource_pool_member_collection) > 0 }
}

