terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "evertz-demo-terraform-bucket"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}