terraform {
  backend "s3" {
    bucket  = "terraform-bucket-engy"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }
}
