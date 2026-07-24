terraform {
  required_version = "~> 1.15"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

resource "aws_s3_bucket" "hands_on" {
  bucket_prefix = var.bucket_prefix

  tags = {
    Name        = "Terraform S3 Hands-on"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}