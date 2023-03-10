resource "aws_memorydb_parameter_group" "main" {
  name   = var.name
  family = "memorydb_redis6"

  dynamic "parameter" {
    for_each = var.parameters
    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }

  tags = var.tags
}
