terraform {
  backend "s3" {
    bucket = "ishav-back-bucket"
    key = "ishav2.tfstate"
    region = "ap-south-1"
  }
}