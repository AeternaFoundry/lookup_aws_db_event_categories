variable "db_event_categories_lookup" {
  description = <<EOT
Map of db_event_categories_lookup, attributes below
Optional:
    - region
    - source_type
EOT

  type = map(object({
    region      = optional(string)
    source_type = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

