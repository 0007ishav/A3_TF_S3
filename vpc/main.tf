resource "aws_vpc" "ishavVpc" {
  cidr_block = var.cidr_block_vpc
  tags = var.tags
}