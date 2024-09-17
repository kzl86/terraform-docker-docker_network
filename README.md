<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 3.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 3.0.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_network.this](https://registry.terraform.io/providers/kreuzwerker/docker/3.0.2/docs/resources/network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attachable"></a> [attachable](#input\_attachable) | Enable manual container attachment to the network. | `bool` | `null` | no |
| <a name="input_check_duplicate"></a> [check\_duplicate](#input\_check\_duplicate) | Requests daemon to check for networks with same name. | `bool` | `null` | no |
| <a name="input_driver"></a> [driver](#input\_driver) | The driver of the Docker network. Possible values are bridge, host, overlay, macvlan. | `string` | `"bridge"` | no |
| <a name="input_ingress"></a> [ingress](#input\_ingress) | Create swarm routing-mesh network. Defaults to false. | `bool` | `null` | no |
| <a name="input_internal"></a> [internal](#input\_internal) | Whether the network is internal. | `bool` | `null` | no |
| <a name="input_ipam_config"></a> [ipam\_config](#input\_ipam\_config) | The IPAM configuration options.<br>[{<br>  aux\_address = Auxiliary IPv4 or IPv6 addresses used by Network driver (optional)<br>  gateway     = The IP address of the gateway (optional)<br>  ip\_range    = The ip range in CIDR form (optional)<br>  subnet      = The subnet in CIDR form (optional)<br>}] | <pre>list(object({<br>    aux_address = optional(map(string), null)<br>    gateway     = optional(string, null)<br>    ip_range    = optional(string, null)<br>    subnet      = optional(string, null)<br>  }))</pre> | `null` | no |
| <a name="input_ipam_driver"></a> [ipam\_driver](#input\_ipam\_driver) | Driver used by the custom IP scheme of the network. Defaults to default | `string` | `null` | no |
| <a name="input_ipam_options"></a> [ipam\_options](#input\_ipam\_options) | Provide explicit options to the IPAM driver. Valid options vary with ipam\_driver and refer to that driver's documentation for more details. | `map(string)` | `null` | no |
| <a name="input_ipv6"></a> [ipv6](#input\_ipv6) | Enable IPv6 networking. Defaults to false. | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined key/value metadata.<br>[{<br>    label = Name of the label (optional)<br>    value = Value of the label (optional)<br>}] | <pre>list(object({<br>    label = optional(string, null)<br>    value = optional(string, null)<br>  }))</pre> | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Docker network. | `string` | n/a | yes |
| <a name="input_options"></a> [options](#input\_options) | Only available with bridge networks. See bridge options docs for more details. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The id of the Docker network. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Docker network. |
| <a name="output_scope"></a> [scope](#output\_scope) | Scope of the network. One of swarm, global, or local. |
<!-- END_TF_DOCS -->