terraform {
  backend "s3" {
    bucket = "ishav-backend-bucket"
    key = "ishav.tfstate"
    region = "ap-south-1"
  }
}
