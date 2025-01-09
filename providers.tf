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
    bucket = "my-demo-evertz-bucket"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}