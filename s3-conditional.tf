terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "terraform_s3" {
  count = var.create-bucket ? 1 : 0

  bucket = var.bucket-description

  force_destroy = true

  tags = {
    Name = var.bucket-name
  }
}
