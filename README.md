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
| <a name="input_driver"></a> [driver](#input\_driver) | The driver of the Docker network. Possible values are bridge, host, overlay, macvlan. | `string` | `"bridge"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Docker network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The id of the Docker network. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Docker network. |
<!-- END_TF_DOCS -->