resource "aws_instance" "ec2_instances" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = element(var.subnet_ids, count.index)

  tags = {
    Name = "${var.instance_name_prefix}-${count.index}"
  }
}
