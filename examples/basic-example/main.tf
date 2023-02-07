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
