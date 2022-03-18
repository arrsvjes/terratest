terraform {
 required_version = ">= 0.15"
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.28"
   }
   random = {
     source  = "hashicorp/random"
     version = "~> 3.0"
   }
   cloudinit = {
     source  = "hashicorp/cloudinit"
     version = "~> 2.1"
   }
 }
 backend "s3" {
    bucket = "s3backend-lmnz79sqaj94om-state-bucket"
    key    = "state/statevpc"
    region = "us-east-2"
  }
}
