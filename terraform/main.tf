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

module "front-end" {
  source = "./modules/modulo-front-end"
  front_instances_count=1
}

module "back-end" {
  source = "./modules/modulo-back-end"
  db_name = "customers"
  app_instances_count = 1
}