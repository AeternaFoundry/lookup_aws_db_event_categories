output "db_event_categories_lookup_id" {
  description = "Map of id values across all db_event_categories_lookup, keyed the same as var.db_event_categories_lookup"
  value       = { for k, v in data.aws_db_event_categories.db_event_categories_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "db_event_categories_lookup_event_categories" {
  description = "Map of event_categories values across all db_event_categories_lookup, keyed the same as var.db_event_categories_lookup"
  value       = { for k, v in data.aws_db_event_categories.db_event_categories_lookup : k => v.event_categories if v.event_categories != null && length(v.event_categories) > 0 }
}
output "db_event_categories_lookup_region" {
  description = "Map of region values across all db_event_categories_lookup, keyed the same as var.db_event_categories_lookup"
  value       = { for k, v in data.aws_db_event_categories.db_event_categories_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "db_event_categories_lookup_source_type" {
  description = "Map of source_type values across all db_event_categories_lookup, keyed the same as var.db_event_categories_lookup"
  value       = { for k, v in data.aws_db_event_categories.db_event_categories_lookup : k => v.source_type if v.source_type != null && length(v.source_type) > 0 }
}

