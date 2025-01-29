plugin "aws" {
  enabled = true
  version = "latest"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  region  = "us-east-1" # Change this to your AWS region
}

rule "aws_instance_invalid_type" {
  enabled = true
  instance_types = ["t3.micro", "t3.small"] # Allowed EC2 types
}
# ✅ Use the correct rule name
rule "aws_s3_bucket_public_acl" {
  enabled = true
}


rule "aws_vpc_invalid_cidr_block" {
  enabled = true
  cidr_blocks = ["10.0.0.0/16", "192.168.0.0/16"] # Restrict VPC CIDR blocks
}
