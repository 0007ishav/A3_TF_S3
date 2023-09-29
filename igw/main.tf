resource "aws_internet_gateway" "ishavIGW" {
    vpc_id = var.vpc_id_igw
    tags = var.tags
}