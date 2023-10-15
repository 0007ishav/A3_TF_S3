  
  variable "loop" {
  type = map(object({
    ami = string
    instance_type = string
  }))
  description = "Give names of instances"
}


variable "key_name" {
  type = string
  description = "Name of the existing AWS key pair"
  default = "ishav_key"
}

variable "tags" {
  type = map(string)
  description = "Give tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}
variable "volume_tags" {
  type = map(string)
  description = "Give volume tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}

variable "cidr_block_vpc" {
  type = string
  description = "Give CIDR to your VPC"
}

variable "cidr_block_pubSub" {
  type = string
  description = "Give CIDR to your public subnet."
}

variable "availability_zone" {
  type = string
  description = "Give availability zone for your public subnet."
}

variable "cidr_block_privateSub" {
  type = string
  description = "Give CIDR to your public subnet."
}

