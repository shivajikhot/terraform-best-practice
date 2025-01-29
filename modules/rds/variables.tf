variable "allocated_storage" {
  description = "Storage size for RDS instance"
  type        = number
  default     = 20
}

variable "engine" {
  description = "Database engine (e.g., mysql, postgres)"
  type        = string
}

variable "engine_version" {
  description = "Engine version"
  type        = string
}

variable "instance_type" {
  description = "Instance type for RDS"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "username" {
  description = "Master username for the database"
  type        = string
}

variable "password" {
  description = "Master password for the database"
  type        = string
}

variable "parameter_group_name" {
  description = "Parameter group name"
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "subnet_group_name" {
  description = "Subnet group name for RDS"
  type        = string
}

variable "environment" {
  description = "Environment tag for the RDS instance"
  type        = string
}
