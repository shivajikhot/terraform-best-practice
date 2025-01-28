aws_region = "us-east-1"

cidr_block       = "10.0.0.0/16"
subnet_count     = 2
subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
map_public_ip    = true

instance_count      = 2
instance_type       = "t2.micro"
ami_id              = "ami-0c1a7f89451184c8b"
instance_name_prefix = "staging-ec2"

bucket_name = "staging-bucket"
acl         = "private"
environment = "staging"
