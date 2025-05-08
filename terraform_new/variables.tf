variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "ec2_instances" {
  type = map(string)
  default = {
    web1 = "t2.micro"
    web2 = "t2.micro"
  }
}

variable "rds_count" {
  type    = number
  default = 1
}

variable "eks_cluster_name" {
  type    = string
  default = "my-eks-cluster"
}

variable "s3_buckets" {
  type    = list(string)
  default = []
}

