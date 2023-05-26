resource "aws_memorydb_subnet_group" "main" {
  name        = var.name
  description = "${var.name}-subnet-group"
  subnet_ids  = var.subnet_ids

  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags
}
