terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Specify the required Terraform version
  required_version = "~> 1.10"

  # Backend configuration for storing Terraform state in an S3 bucket
  backend "s3" {
    encrypt      = true
    bucket       = "terraformbackendbucket8788"
    region       = "ap-south-1"
    key          = "terraform.tfstate"
    use_lockfile = true
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

