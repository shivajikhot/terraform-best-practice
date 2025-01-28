aws_region = "us-east-1"

cidr_block       = "192.168.0.0/16"
subnet_count     = 3
subnet_cidrs     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
map_public_ip    = false

instance_count      = 3
instance_type       = "t2.micro"
ami_id              = "ami-04b4f1a9cf54c11d0"
instance_name_prefix = "prod-ec2"

bucket_name = "production-bucket-demo1"
acl         = "private"
environment = "production"
