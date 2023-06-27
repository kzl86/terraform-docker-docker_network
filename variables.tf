variable "name" {
    description = "The name of the Docker network."
    type        = string
}

variable "driver" {
    description = "The driver of the Docker network. Possible values are bridge, host, overlay, macvlan."
    type        = string
    default     = "bridge"
}