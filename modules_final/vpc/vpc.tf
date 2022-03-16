resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpcname
  }
}

variable "vpc_cidr" {
  type = string
}

variable "vpcname" {
  type = string
}

resource "aws_subnet" "subnet1a" {
  vpc_id            = aws_vpc.vpc1.id
  availability_zone = var.az
  cidr_block        = var.subnet_cidr
  tags = {
    Name = var.subnet_names
  }
}

variable "az" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "subnet_names" {
  type = string
}

resource "aws_network_interface" "iface1" {
  subnet_id   = aws_subnet.subnet1a.id
  private_ips = var.ec2_private_ip
  tags = {
    Name = "primary network interface"
  }
}

variable "ec2_private_ip" {
  type = list(string)
}

output "ec2_network_interface" {
  value = aws_network_interface.iface1.id 
}



