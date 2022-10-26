terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                  = var.provider_attr.profile
  region                   = var.provider_attr.region
  default_tags {
    tags = {
      Deploy       = "terraform"
      Project-Name = "aws-git-tf"
    }
  }
}