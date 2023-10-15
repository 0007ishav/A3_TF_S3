module "myEC2Instance" {
    source = "../for_EachEC2"
    for_each = var.loop
    loop = each.value
    ami = each.value.ami
    instance_type = each.value.instance_type
    
    subnet_id = module.ishavPublicSubnet.PS_id



    tags = merge(
        var.tags,
        {
            Name = each.key
        }
    )

    volume_tags = merge(
        var.volume_tags, 
        {
            Name = each.key
        }
    )
}

# --------- VPC ----------#
module "ishavVpc" {
  source = "../vpc"
  cidr_block_vpc = var.cidr_block_vpc

   tags = merge(
        var.tags,
        {
            Name = "ishavVPC"
        }
    )
}

# --------- PUBLIC SUBNET ----------#
module "ishavPublicSubnet" {
  source = "../public_subnet"
  vpc_id = module.ishavVpc.myvpc_id
  cidr_block_pubSub = var.cidr_block_pubSub
  availability_zone = var.availability_zone
}

# --------- PRIVATE SUBNET ----------#
module "ishavPrivateSubnet" {
  source = "../private_subnet"
  vpc_id = module.ishavVpc.myvpc_id
  cidr_block_privateSub = var.cidr_block_privateSub
}

# --------- IGW ----------#
module "ishavIGW" {
  source = "../igw"
  vpc_id_igw = module.ishavVpc.myvpc_id
}

# --------- Public Routing Table ----------#
module "publicRT" {
  source = "../publicRouting"
  vpc_id = module.ishavVpc.myvpc_id
  gateway_id = module.ishavIGW.igw_id
}

# --------- Route Table Association Public Subnet  ----------#
module "publicRTAssociation" {
  source = "../associationRoute"
  subnet_id_rt = module.ishavPublicSubnet.PS_id
  route_table_id = module.publicRT.RT_id

}
