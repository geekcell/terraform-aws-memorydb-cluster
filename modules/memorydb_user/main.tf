resource "aws_memorydb_acl" "main" {
  name = "${var.name}-acl"

  user_names = distinct([for u in aws_memorydb_user.main : u.id])

  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags
}

resource "aws_memorydb_user" "main" {
  for_each = { for k, v in var.users : k => v }

  user_name     = "${var.name}-${each.key}"
  access_string = each.value.access_string

  authentication_mode {
    type      = "password"
    passwords = [random_password.main[each.key].result]
  }

  tags = merge(var.tags, each.value.tags)
}

resource "random_password" "main" {
  for_each = { for k, v in var.users : k => v }

  length  = 16
  special = false
}
