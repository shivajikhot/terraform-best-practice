cidr_block       = "192.168.0.0/16"
subnet_count     = 3
subnet_cidrs     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
map_public_ip    = false

instance_count      = 3
instance_type       = "t3.medium"
ami_id              = "ami-0c1a7f89451184c8b"
instance_name_prefix = "prod-ec2"

bucket_name = "production-bucket"
acl         = "private"
environment = "production"
