output "vpc_id" {
  value = aws_vpc.custom.id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = aws_subnet.subnet[*].id # Replace `aws_subnet.this` with your actual subnet resource name
}

