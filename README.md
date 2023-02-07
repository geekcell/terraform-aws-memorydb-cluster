<!-- BEGIN_TF_DOCS -->
[![Geek Cell GmbH](https://raw.githubusercontent.com/geekcell/template-terraform-module/main/docs/assets/logo.svg)](https://www.geekcell.io/)

### Code Quality
[![License](https://img.shields.io/github/license/geekcell/terraform-aws-memorydb-cluster)](https://github.com/geekcell/terraform-aws-memorydb-cluster/blob/master/LICENSE)
[![GitHub release (latest tag)](https://img.shields.io/github/v/release/geekcell/terraform-aws-memorydb-cluster?logo=github&sort=semver)](https://github.com/geekcell/terraform-aws-memorydb-cluster/releases)
[![Release](https://github.com/geekcell/terraform-aws-memorydb-cluster/actions/workflows/release.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-memorydb-cluster/actions/workflows/release.yaml)
[![Validate](https://github.com/geekcell/terraform-aws-memorydb-cluster/actions/workflows/validate.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-memorydb-cluster/actions/workflows/validate.yaml)
[![Lint](https://github.com/geekcell/terraform-aws-memorydb-cluster/actions/workflows/linter.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-memorydb-cluster/actions/workflows/linter.yaml)

### Security
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=INFRASTRUCTURE+SECURITY)

#### Cloud
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+AWS+V1.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_aws_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+AWS+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_azure)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+AZURE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_azure_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+AZURE+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+GCP+V1.1)

##### Container
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_kubernetes_16)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+KUBERNETES+V1.6)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_eks_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+EKS+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_gke_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+GKE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/cis_kubernetes)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=CIS+KUBERNETES+V1.5)

#### Data protection
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=SOC2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/pci)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=PCI-DSS+V3.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/pci_dss_v321)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=PCI-DSS+V3.2.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=ISO27001)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=NIST-800-53)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=HIPAA)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-memorydb-cluster/fedramp_moderate)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-memorydb-cluster&benchmark=FEDRAMP+%28MODERATE%29)

# Terraform AWS MemoryDB Cluster

This Terraform module provides a preconfigured solution for setting up
AWS MemoryDB Clusters in your AWS account. With this module, you can quickly
and easily launch a fully-functional MemoryDB Cluster that meets your
specific needs and requirements. Our team has extensive experience working
with AWS MemoryDB and has optimized this module to provide the best possible
experience for users.

By using this Terraform module, you can save time and effort in setting up
your MemoryDB Cluster, as well as avoid common mistakes and pitfalls. The
module encapsulates all necessary configurations and provides a seamless,
turnkey solution for launching your MemoryDB Cluster. Whether you are just
getting started with AWS MemoryDB or looking for a more efficient way to
manage your clusters, this Terraform module is an excellent choice.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | When set to true, the cluster will automatically receive minor engine version upgrades after launch. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the cluster. | `string` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Version number of the Redis engine to be used for the cluster. | `string` | n/a | yes |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | Specifies the weekly time range during which maintenance on the cluster is performed. | `string` | `"sun:23:00-mon:01:30"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the cluster. | `string` | n/a | yes |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | The compute and memory capacity of the nodes in the cluster. | `string` | n/a | yes |
| <a name="input_num_replicas_per_shard"></a> [num\_replicas\_per\_shard](#input\_num\_replicas\_per\_shard) | The number of replicas to apply to each shard. | `number` | n/a | yes |
| <a name="input_num_shards"></a> [num\_shards](#input\_num\_shards) | The number of shards in the cluster. | `number` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | A list of parameters to apply to the cluster. | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | <pre>[<br>  {<br>    "name": "activedefrag",<br>    "value": "yes"<br>  }<br>]</pre> | no |
| <a name="input_port"></a> [port](#input\_port) | The port number on which each of the nodes accepts connections. | `number` | `6379` | no |
| <a name="input_recipients"></a> [recipients](#input\_recipients) | List of email addresses to notify when the cluster is in an unhealthy state. | `list(string)` | `[]` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | Set of VPC Security Group ID-s to associate with this cluster. | `list(string)` | n/a | yes |
| <a name="input_snapshot_retention_limit"></a> [snapshot\_retention\_limit](#input\_snapshot\_retention\_limit) | The number of days for which MemoryDB retains automatic snapshots before deleting them. | `number` | `0` | no |
| <a name="input_snapshot_window"></a> [snapshot\_window](#input\_snapshot\_window) | The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. | `string` | `"05:00-09:00"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of VPC subnet ID-s to associate with this cluster. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to the AWS Customer Managed Key. | `map(any)` | `{}` | no |
| <a name="input_tls_enabled"></a> [tls\_enabled](#input\_tls\_enabled) | A flag to enable in-transit encryption on the cluster. | `bool` | `true` | no |
| <a name="input_users"></a> [users](#input\_users) | A map of users to create in the cluster. | <pre>map(<br>    object(<br>      {<br>        access_string = string,<br>        tags          = map(string)<br>      }<br>    )<br>  )</pre> | <pre>{<br>  "admin": {<br>    "access_string": "on ~* &* +@all",<br>    "tags": {<br>      "user": "admin"<br>    }<br>  },<br>  "readonly": {<br>    "access_string": "on ~* &* -@all +@read",<br>    "tags": {<br>      "user": "readonly"<br>    }<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the cluster. |
| <a name="output_cluster_endpoint_address"></a> [cluster\_endpoint\_address](#output\_cluster\_endpoint\_address) | DNS hostname of the cluster configuration endpoint. |
| <a name="output_cluster_endpoint_port"></a> [cluster\_endpoint\_port](#output\_cluster\_endpoint\_port) | Port number that the cluster configuration endpoint is listening on. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Memory DB Cluster. |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.36 |

## Resources

- resource.aws_memorydb_cluster.main (main.tf#18)

# Examples
### Full
```hcl
module "basic-example" {
  source = "../../"

  description            = "PHP Sessions"
  engine_version         = "6.2"
  name                   = "session"
  node_type              = "db.t4g.small"
  num_replicas_per_shard = 0
  num_shards             = 1
  security_group_ids     = ["sg-123456789"]
  subnet_ids             = ["subnet-123456789", "subnet-987654321"]
}
```
<!-- END_TF_DOCS -->
