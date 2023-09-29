variable "vpc_id" {
  type = string
  description = "This will get from vpc"
}
variable "cidr_block_pubSub" {
  type = string
  description = "Give CIDR to your public subnet."
}

variable "availability_zone" {
  type = string
  description = "Give availability zone for your public subnet."
}
variable "tags" {
  type = map(string)
  description = "Give tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}