loop = {
    "ishav1" = {
      ami           = "ami-0a5ac53f63249fba0"
      instance_type = "t2.micro"
    }
    "ishav2" = {
      ami           = "ami-0a5ac53f63249fba0"
      instance_type = "t2.micro"
    }
    "ishav3" = {
      ami           = "ami-0a5ac53f63249fba0"
      instance_type = "t2.micro"
    }
  }

tags = {
    name = "Ishav",
    Owner = "ishav@cloudeq.com",
    Purpose = "Training"    
}

volume_tags = {
    name = "Ishav",
    Owner = "ishav@cloudeq.com",
    Purpose = "Training"    
}
key_name = "ishav_key"


cidr_block_vpc = "10.0.0.0/16"
cidr_block_pubSub = "10.0.0.0/24"
availability_zone = "ap-south-1a"
cidr_block_privateSub = "10.0.2.0/24"
