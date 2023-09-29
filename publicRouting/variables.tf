variable "vpc_id" {
  type = string
  description = "This will get from vpc"
}

variable "gateway_id" {
  type = string
}
variable "tags" {
  type = map(string)
  description = "Give tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}