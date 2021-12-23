terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.70.0"
    }
  }
  
  backend "s3" {
    bucket         = "jazzygeoff-terraform-state"
    key            = "terraform-state"
    region         = "us-east-1"
    encrypt        = true
    #dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  # Configuration options
}