terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  access_key = "AKIAQHF6JORKSFSW4EXJ"
  secret_key = "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"
  region     = "us-east-2"
}

resource "aws_instance" "hello-instance" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  tags = {
    Name = "hello-instance"
  }
}
