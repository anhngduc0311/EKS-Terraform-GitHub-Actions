terraform {
  required_version = ">= 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-eks-tf-state-bucket1"
    region         = "ap-southeast-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "my-eks-tf-state-bucket1-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
