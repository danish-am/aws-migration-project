
# EC2 OUTPUTS

output "ec2_instance_ids" {
  description = "List of EC2 instance IDs"
  value       = [for inst in aws_instance.ec2 : inst.id]
}

output "ec2_public_ips" {
  description = "List of EC2 public IPs"
  value       = [for inst in aws_instance.ec2 : inst.public_ip]
}

output "ec2_private_ips" {
  description = "List of EC2 private IPs"
  value       = [for inst in aws_instance.ec2 : inst.private_ip]
}


# RDS OUTPUTS

output "rds_endpoints" {
  description = "List of RDS instance endpoints"
  value       = [for db in aws_db_instance.db : db.endpoint]
}

output "rds_instance_ids" {
  description = "List of RDS instance IDs"
  value       = [for db in aws_db_instance.db : db.id]
}


# EKS OUTPUTS

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.eks.name
}

output "eks_endpoint" {
  description = "EKS cluster API endpoint"
  value       = aws_eks_cluster.eks.endpoint
}

output "eks_certificate_authority" {
  description = "EKS cluster certificate authority data"
  value       = aws_eks_cluster.eks.certificate_authority[0].data
}


# S3 OUTPUTS

output "s3_bucket_names" {
  description = "List of S3 bucket names"
  value       = [for bucket in aws_s3_bucket.buckets : bucket.id]
}

output "s3_bucket_arns" {
  description = "List of S3 bucket ARNs"
  value       = [for bucket in aws_s3_bucket.buckets : bucket.arn]
}


# VPC OUTPUTS

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = [aws_subnet.a.id, aws_subnet.b.id]
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.all_open.id
}
