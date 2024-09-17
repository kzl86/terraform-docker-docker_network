module "nginx_bridge" {
  source  = "kzl86/docker_network/docker"
  version = "v3.0.0"

  name   = "nginxbridge"
  driver = "bridge"
  labels = [
    {
      label = "Managed by"
      value = "Terraform"
    }
  ]
}

data "docker_registry_image" "nginx" {
  name = "nginx:latest"
}

module "nginx_image" {
  source  = "kzl86/docker_image/docker"
  version = "v3.0.0"

  name          = "nginx:latest"
  keep_locally  = true
  pull_triggers = [data.docker_registry_image.nginx.sha256_digest]
}

variable "nginx_mount_source" {
  type = string
}

module "nginx_container" {
  source  = "kzl86/docker_container/docker"
  version = "v3.0.1"

  name    = "nginx-example"
  image   = module.nginx_image.image_id
  restart = "unless-stopped"

  env = [
    "NGINX_HOST=nginx-example.com",
    "NGINX_PORT=80"
  ]

  mounts = [{
    "target"    = "/usr/share/nginx/html"
    "source"    = "${var.nginx_mount_source}/content"
    "type"      = "bind"
    "read_only" = true
  }]

  networks_advanced = [{
    "name" = module.nginx_bridge.name
  }]

  ports = [{
    "internal" = 80
    "external" = 8080
    "protocol" = "tcp"
  }]
}