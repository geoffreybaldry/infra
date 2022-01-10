terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.70.0"
    }
  }
  
  backend "s3" {}
}

provider "aws" {
  # Configuration options
  region = "eu-west-2"
  shared_credentials_file = "C:\\Users\\geoff\\.aws\\credentials"
  profile = "terraform-dev"
}