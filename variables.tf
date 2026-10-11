variable "fleet_apps_management_fleet_properties_lookup" {
  description = <<EOT
Map of fleet_apps_management_fleet_properties_lookup, attributes below
Required:
    - fleet_id
Optional:
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fleet_id     = string
    display_name = optional(string)
    state        = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

