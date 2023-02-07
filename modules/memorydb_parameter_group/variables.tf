# Context
variable "tags" {
  default     = {}
  description = "Tags to add to the AWS Customer Managed Key."
  type        = map(any)
}

# AWS Memory DB Parameter Group
variable "name" {
  description = "Name of the cluster."
  type        = string
}

variable "parameters" {
  description = "A list of parameters to apply to the cluster."
  type = list(
    object(
      {
        name  = string,
        value = string
      }
    )
  )
}
