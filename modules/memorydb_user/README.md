<!-- BEGIN_TF_DOCS -->


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the cluster. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to the AWS Customer Managed Key. | `map(any)` | `{}` | no |
| <a name="input_users"></a> [users](#input\_users) | A map of user definitions (maps) to be created | <pre>map(<br>    object(<br>      {<br>        access_string = string,<br>        tags          = map(string)<br>      }<br>    )<br>  )</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acl_name"></a> [acl\_name](#output\_acl\_name) | n/a |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.36 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.4 |

## Resources

- resource.aws_memorydb_acl.main (modules/memorydb_user/main.tf#1)
- resource.aws_memorydb_user.main (modules/memorydb_user/main.tf#13)
- resource.random_password.main (modules/memorydb_user/main.tf#27)
<!-- END_TF_DOCS -->
