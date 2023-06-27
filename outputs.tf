output "name" {
    description = "The name of the Docker network."
    value = docker_network.this.name
}

output "id" {
    description = "The id of the Docker network."
    value = docker_network.this.id
}