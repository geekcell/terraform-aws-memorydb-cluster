# Context
variable "tags" {
  default     = {}
  description = "Tags to add to the AWS Customer Managed Key."
  type        = map(any)
}

# AWS Memory DB User
variable "name" {
  description = "Name of the cluster."
  type        = string
}

variable "users" {
  description = "A map of user definitions (maps) to be created"
  type = map(
    object(
      {
        access_string = string,
        tags          = map(string)
      }
    )
  )
}
