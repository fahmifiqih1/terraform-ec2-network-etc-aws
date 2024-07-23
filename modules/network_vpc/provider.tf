terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

provider "aws" {
  shared_credentials_files = var.aws_credentials_local
  profile                  = var.aws_profiles_local
  region                   = var.aws_zone
}