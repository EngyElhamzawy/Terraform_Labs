terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket       = "terraform-final-lab"
    region       = "us-east-1"
    key          = "terraform.tfstate"
    use_lockfile = true
  }

}