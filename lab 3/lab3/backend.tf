terraform {
  backend "s3" {
    bucket  = "terraform-final-lab"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }
}