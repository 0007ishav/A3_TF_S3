variable "cidr_block_vpc" {
  type = string
  description = "Give CIDR to your VPC"
}

variable "tags" {
  type = map(string)
  description = "Give tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}