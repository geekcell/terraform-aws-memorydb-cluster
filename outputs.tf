output "arn" {
  description = "The ARN of the cluster."
  value       = aws_memorydb_cluster.main.arn
}

output "cluster_endpoint_address" {
  description = "DNS hostname of the cluster configuration endpoint."
  value       = aws_memorydb_cluster.main.cluster_endpoint[0].address
}

output "cluster_endpoint_port" {
  description = "Port number that the cluster configuration endpoint is listening on."
  value       = aws_memorydb_cluster.main.cluster_endpoint[0].port
}

output "name" {
  description = "The name of the Memory DB Cluster."
  value       = aws_memorydb_cluster.main.id
}
