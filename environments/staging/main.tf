provider "aws" {
  region = var.aws_region
}
terraform {
  backend "s3" {
    bucket         = "terraform-backend-statefil"  
    key            = "env/staging/terraform.tfstate"
    region         = "us-east-1"            
    encrypt        = true
  }
}



module "vpc" {
  source        = "../../modules/vpc"
  cidr_block    = var.cidr_block
  subnet_count  = var.subnet_count
  subnet_cidrs  = var.subnet_cidrs
  map_public_ip = var.map_public_ip
}

module "ec2" {
  source              = "../../modules/ec2"
  instance_count      = var.instance_count
  instance_type       = var.instance_type
  ami_id              = var.ami_id
  subnet_ids          = module.vpc.subnet_ids
  instance_name_prefix = var.instance_name_prefix
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.bucket_name
  acl         = var.acl
  environment = var.environment
}
