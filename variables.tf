# Context
variable "tags" {
  default     = {}
  description = "Tags to add to the AWS Customer Managed Key."
  type        = map(any)
}

# AWS Memory DB Cluster
variable "auto_minor_version_upgrade" {
  default     = true
  description = "When set to true, the cluster will automatically receive minor engine version upgrades after launch."
  type        = bool
}

variable "description" {
  description = "Description for the cluster."
  type        = string
}

variable "engine_version" {
  description = "Version number of the Redis engine to be used for the cluster."
  type        = string
}

variable "maintenance_window" {
  default     = "sun:23:00-mon:01:30"
  description = "Specifies the weekly time range during which maintenance on the cluster is performed."
  type        = string
}

variable "name" {
  description = "Name of the cluster."
  type        = string
}

variable "node_type" {
  description = "The compute and memory capacity of the nodes in the cluster."
  type        = string
}

variable "num_replicas_per_shard" {
  description = "The number of replicas to apply to each shard."
  type        = number
}

variable "num_shards" {
  description = "The number of shards in the cluster."
  type        = number
}

variable "parameters" {
  default = [
    {
      name  = "activedefrag"
      value = "yes"
    }
  ]
  description = "A list of parameters to apply to the cluster."
  type = list(object({
    name  = string
    value = string
  }))
}

variable "port" {
  default     = 6379
  description = "The port number on which each of the nodes accepts connections."
  type        = number
}

variable "recipients" {
  default     = []
  description = "List of email addresses to notify when the cluster is in an unhealthy state."
  type        = list(string)
}

variable "security_group_ids" {
  description = "Set of VPC Security Group ID-s to associate with this cluster."
  type        = list(string)
}

variable "snapshot_retention_limit" {
  default     = 0
  description = "The number of days for which MemoryDB retains automatic snapshots before deleting them."
  type        = number
}

variable "snapshot_window" {
  default     = "05:00-09:00"
  description = "The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard."
  type        = string
}

variable "subnet_ids" {
  description = "List of VPC subnet ID-s to associate with this cluster."
  type        = list(string)
}

variable "tls_enabled" {
  default     = true
  description = "A flag to enable in-transit encryption on the cluster."
  type        = bool
}

variable "users" {
  default = {
    admin = {
      access_string = "on ~* &* +@all"
      tags          = { user = "admin" }
    }
    readonly = {
      access_string = "on ~* &* -@all +@read"
      tags          = { user = "readonly" }
    }
  }
  description = "A map of users to create in the cluster."
  type = map(
    object(
      {
        access_string = string,
        tags          = map(string)
      }
    )
  )
}
