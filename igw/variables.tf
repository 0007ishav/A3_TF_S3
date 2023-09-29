variable "vpc_id_igw" {
  type = string
  description = "This will get from vpc"
}

variable "tags" {
  type = map(string)
  description = "Give tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}