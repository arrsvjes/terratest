terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  access_key = "AKIAQ5VDTNZKBNZI3DEE"
  secret_key = "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"
  region = "us-east-2"
}

# Resource configuration
resource "aws_instance" "hello-instance" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  tags = {
    Name = "hello-instance"
  }
}