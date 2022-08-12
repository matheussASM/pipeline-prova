terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.17.1"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = "us-east-1"
}

module "front-end"{
  source = "./modules/modulo-ec2"

}

module "api"{
  source = "./modules/modulo-ec2"
  
}

module "rds"{
  source = "./modules/modulo-ec2"
  
}