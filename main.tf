resource "docker_network" "this" {
  name   = var.name
  driver = var.driver
}