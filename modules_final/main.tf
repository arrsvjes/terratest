provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source         = "./vpc"
  vpcname        = "vpc_module1"
  vpc_cidr       = "19.82.0.0/16"
  az             = "us-east-1a"
  subnet_cidr    = "19.82.1.0/24"
  subnet_names   = "subnet1a"
  ec2_private_ip = ["19.82.1.82"]

}

module "ec2" {
  source   = "./ec2"
  ec2ami   = "ami-08e4e35cccc6189f4"
  ec2type  = "t2.micro"
  ec2iface = module.vpc.ec2_network_interface
  ec2name  = "ec2 name from module"
}


