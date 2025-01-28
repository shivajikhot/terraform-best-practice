aws_region = "us-east-1"

cidr_block       = "172.16.0.0/16"
subnet_count     = 2
subnet_cidrs     = ["172.16.1.0/24", "172.16.2.0/24"]
map_public_ip    = true

instance_count      = 1
instance_type       = "t2.micro"
ami_id              = "ami-04b4f1a9cf54c11d0"
instance_name_prefix = "dev-ec2"

bucket_name = "development-bucket-demo1"
acl         = "private"
environment = "development"
