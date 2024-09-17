variable "name" {
  description = "The name of the Docker network."
  type        = string
}

variable "attachable" {
  description = "Enable manual container attachment to the network."
  type        = bool
  default     = null
}

variable "check_duplicate" {
  description = "Requests daemon to check for networks with same name."
  type        = bool
  default     = null
}

variable "driver" {
  description = "The driver of the Docker network. Possible values are bridge, host, overlay, macvlan."
  type        = string
  default     = "bridge"
}

variable "ingress" {
  description = "Create swarm routing-mesh network. Defaults to false."
  type        = bool
  default     = null
}
variable "internal" {
  description = "Whether the network is internal."
  type        = bool
  default     = null
}
variable "ipam_config" {
  description = <<EOF
The IPAM configuration options.
[{
  aux_address = Auxiliary IPv4 or IPv6 addresses used by Network driver (optional)
  gateway     = The IP address of the gateway (optional)
  ip_range    = The ip range in CIDR form (optional)
  subnet      = The subnet in CIDR form (optional)
}]
EOF

  type = list(object({
    aux_address = optional(map(string), null)
    gateway     = optional(string, null)
    ip_range    = optional(string, null)
    subnet      = optional(string, null)
  }))
  default = null
}
variable "ipam_driver" {
  description = "Driver used by the custom IP scheme of the network. Defaults to default"
  type        = string
  default     = null
}
variable "ipam_options" {
  description = "Provide explicit options to the IPAM driver. Valid options vary with ipam_driver and refer to that driver's documentation for more details."
  type        = map(string)
  default     = null
}
variable "ipv6" {
  description = "Enable IPv6 networking. Defaults to false."
  type        = bool
  default     = false
}
variable "labels" {
  description = <<EOF
User-defined key/value metadata.
[{
    label = Name of the label (optional)
    value = Value of the label (optional)
}]
EOF

  type = list(object({
    label = optional(string, null)
    value = optional(string, null)
  }))
  default = null
}
variable "options" {
  description = "Only available with bridge networks. See bridge options docs for more details."
  type        = map(string)
  default     = null
}
