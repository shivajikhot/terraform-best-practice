variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

variable "ami_id" {
  description = "AMI ID to use for the instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where EC2 instances will be deployed"
  type        = list(string)
}

variable "instance_name_prefix" {
  description = "Name prefix for the EC2 instances"
  type        = string
}
