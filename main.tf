data "oci_fleet_apps_management_fleet_properties" "fleet_apps_management_fleet_properties_lookup" {
  for_each = var.fleet_apps_management_fleet_properties_lookup

  fleet_id     = each.value.fleet_id
  display_name = each.value.display_name
  state        = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

