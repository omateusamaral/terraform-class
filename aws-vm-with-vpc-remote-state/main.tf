terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }
  backend "s3" {
    bucket = "mateusamaralremotestate"
    key    = "aws-vm/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner      = "mateusamaral"
      managed-by = "terraform"
    }
  }
}
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "mateusamaralremotestate"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
