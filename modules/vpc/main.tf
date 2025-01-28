resource "aws_vpc" "custom" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "subnet" {
  count                  = var.subnet_count
  vpc_id                 = aws_vpc.custom.id
  cidr_block             = element(var.subnet_cidrs, count.index)
  map_public_ip_on_launch = var.map_public_ip
}

output "vpc_id" {
  value = aws_vpc.custom.id
}
