output "instance_ids" {
  value = aws_instance.ec2_instances[*].id
}

output "public_ips" {
  value = aws_instance.ec2_instances[*].public_ip
}

output "private_ips" {
  value = aws_instance.ec2_instances[*].private_ip
}
