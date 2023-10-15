resource "aws_instance" "myEC2Instance" {
 
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  subnet_id = var.subnet_id
  # vpc_security_group_ids = var.vpc_security_group_ids

  tags = var.tags
  volume_tags = var.volume_tags
}