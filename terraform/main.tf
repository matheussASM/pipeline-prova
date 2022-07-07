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

resource "aws_instance" "app" {
  ami = "ami-0729e439b6769d6ab"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-prova"
  }
}