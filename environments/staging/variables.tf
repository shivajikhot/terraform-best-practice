variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_count" {
  description = "Number of subnets"
  type        = number
}

variable "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}

variable "map_public_ip" {
  description = "Whether to map public IPs"
  type        = bool
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_name_prefix" {
  description = "Prefix for EC2 instance names"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "acl" {
  description = "ACL for S3 bucket"
  type        = string
}
