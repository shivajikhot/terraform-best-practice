plugin "aws" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  version = "0.37.0"
  region  = "us-east-1"
}

rule "aws_instance_invalid_type" {
  enabled = true
  instance_types = ["t3.micro", "t3.small"] # Allowed EC2 types
}

rule "aws_s3_bucket_public_access" {
  enabled = true
}

rule "aws_vpc_invalid_cidr_block" {
  enabled = true
  cidr_blocks = ["10.0.0.0/16", "192.168.0.0/16"] # Restrict VPC CIDR blocks
}
