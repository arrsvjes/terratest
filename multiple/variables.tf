variable "ami" {
  type = map

  default = {
    "us-east-1" = "ami-04169656fea786776"
    "us-west-1" = "ami-006fce2a9625b177f"
  }
}

variable "instance_count" {
  default = "2"
  type = string
}

variable "instance_type" {
  default = "t2.micro"
  type = string
}
variable "aws_region" {
  default = "us-east-1"
  type = string
}
