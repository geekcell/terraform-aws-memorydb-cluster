# Context
variable "tags" {
  default     = {}
  description = "Tags to add to the AWS Customer Managed Key."
  type        = map(any)
}

# AWS Memory DB Subnet Group
variable "name" {
  description = "Name of the cluster."
  type        = string
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs for the subnet group."
  type        = list(string)
}
