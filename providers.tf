terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.70.0"
    }
  }
  
  backend "s3" {
    bucket         = "jazzy-bucket"
    key            = "terraform/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-state-table"
  }
}

provider "aws" {
  # Configuration options
  region = "eu-west-2"
}