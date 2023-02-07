/**
 * # Terraform AWS MemoryDB Cluster
 *
 * This Terraform module provides a preconfigured solution for setting up
 * AWS MemoryDB Clusters in your AWS account. With this module, you can quickly
 * and easily launch a fully-functional MemoryDB Cluster that meets your
 * specific needs and requirements. Our team has extensive experience working
 * with AWS MemoryDB and has optimized this module to provide the best possible
 * experience for users.
 *
 * By using this Terraform module, you can save time and effort in setting up
 * your MemoryDB Cluster, as well as avoid common mistakes and pitfalls. The
 * module encapsulates all necessary configurations and provides a seamless,
 * turnkey solution for launching your MemoryDB Cluster. Whether you are just
 * getting started with AWS MemoryDB or looking for a more efficient way to
 * manage your clusters, this Terraform module is an excellent choice.
 */
resource "aws_memorydb_cluster" "main" {
  name        = var.name
  description = var.description

  # Config
  engine_version         = var.engine_version
  node_type              = var.node_type
  num_shards             = var.num_shards
  num_replicas_per_shard = var.num_replicas_per_shard
  acl_name               = module.memorydb_user.acl_name
  parameter_group_name   = module.memorydb_parameter_group.name

  # Network
  port               = var.port
  security_group_ids = var.security_group_ids
  subnet_group_name  = module.memorydb_subnet_group.name

  # Maintenance
  maintenance_window         = var.maintenance_window
  auto_minor_version_upgrade = var.auto_minor_version_upgrade

  # Security
  tls_enabled = var.tls_enabled
  kms_key_arn = module.kms["storage"].key_arn

  # Notification
  sns_topic_arn = module.sns["notification"].arn

  # Snapshots
  snapshot_retention_limit = var.snapshot_retention_limit
  snapshot_window          = var.snapshot_window
  final_snapshot_name      = "${var.name}-final"

  tags = var.tags
}

module "memorydb_parameter_group" {
  source     = "./modules/memorydb_parameter_group"
  name       = var.name
  parameters = var.parameters
}

module "memorydb_user" {
  source = "./modules/memorydb_user"
  name   = var.name
  users  = var.users
}

module "memorydb_subnet_group" {
  source     = "./modules/memorydb_subnet_group"
  name       = var.name
  subnet_ids = var.subnet_ids
}

module "kms" {
  for_each = toset(["storage"])
  source   = "github.com/geekcell/terraform-aws-kms?ref=v1.0"
  alias    = format("alias/rdb/cluster/%s/${each.value}", var.name)
}

module "sns" {
  for_each = toset(["notification"])

  source = "github.com/geekcell/terraform-aws-sns-email-notification?ref=v1.0"
  name   = "${var.name}-memorydb-${each.value}"

  email_addresses = var.recipients
}
