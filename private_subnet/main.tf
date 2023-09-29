resource "aws_subnet" "ishavPrivateSubnet" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block_privateSub
  map_public_ip_on_launch = true
}