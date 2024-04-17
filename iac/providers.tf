terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "YOUR_BUCKET"
    key    = "state.tfstate"
  }
}

# Configure the AWS Provider
provider "aws" {}
