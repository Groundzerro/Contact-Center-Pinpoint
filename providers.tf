terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Ensure compatibility with AWS provider
    }
  }
  required_version = ">= 1.5.0" # Ensure compatibility with Terraform
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}
