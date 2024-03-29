terraform {
  required_version = "~> 1.7.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.0" 
    }
  }
}


# provider block
provider "aws" {
  region = var.aws_region
}