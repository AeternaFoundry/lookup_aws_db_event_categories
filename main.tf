data "aws_db_event_categories" "db_event_categories_lookup" {
  for_each = var.db_event_categories_lookup

  region      = each.value.region
  source_type = each.value.source_type
}

