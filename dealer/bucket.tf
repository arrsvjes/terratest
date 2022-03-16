terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

provider "aws" {
  region = var.region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_s3_bucket" "bucket1" {
  bucket = var.bucket
  acl    = "public-read"
  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_object" "object1" {
  bucket       = aws_s3_bucket.bucket1.bucket
  key          = "index.html"
  acl          = "public-read"
  content      = var.content
  content_type = "text/html"
}
