resource "aws_subnet" "ishavPublicSubnet" {
  vpc_id = var.vpc_id
  availability_zone = var.availability_zone
  cidr_block = var.cidr_block_pubSub
  tags = var.tags
}