resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.subnet_cidr[0]
  availability_zone = var.az[1]
  tags = {
    Name = var.subnet_name[1]
  }
}
