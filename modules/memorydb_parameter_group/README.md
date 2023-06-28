<!-- BEGIN_TF_DOCS -->


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the cluster. | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | A list of parameters to apply to the cluster. | <pre>list(<br>    object(<br>      {<br>        name  = string,<br>        value = string<br>      }<br>    )<br>  )</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to the AWS Customer Managed Key. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.36 |

## Resources

- resource.aws_memorydb_parameter_group.main (modules/memorydb_parameter_group/main.tf#1)
<!-- END_TF_DOCS -->
