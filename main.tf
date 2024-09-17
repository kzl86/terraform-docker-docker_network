resource "docker_network" "this" {
  name            = var.name
  attachable      = var.attachable
  check_duplicate = var.check_duplicate
  driver          = var.driver
  ingress         = var.ingress
  internal        = var.internal

  dynamic "ipam_config" {
    for_each = var.ipam_config != null ? var.ipam_config : []

    content {
      aux_address = ipam_config.value.aux_address
      gateway     = ipam_config.value.gateway
      ip_range    = ipam_config.value.ip_range
      subnet      = ipam_config.value.subnet
    }
  }

  ipam_driver  = var.ipam_driver
  ipam_options = var.ipam_options
  ipv6         = var.ipv6

  dynamic "labels" {
    for_each = var.labels != null ? var.labels : []

    content {
      label = labels.value.label
      value = labels.value.value
    }
  }

  options = var.options
}