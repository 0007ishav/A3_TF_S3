variable "Name" {
  type = map
  description = "Give names of instances"
}

variable "ami" {
  type = string
  description = "AMI id of the instance"
}

variable "instance_type" {
  type = string
  description = "Instance type"
}

# variable "key_name" {
#   type = string
#   description = "Name of the existing AWS key pair"
#   default = "ishav_key"
# }

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

variable "subnet_id" {
  type = string
}

# variable "vpc_security_group_ids" {
#   type = string
# }