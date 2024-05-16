terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.103.1"
    }

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

provider "azurerm" {

  features {

  }
}
