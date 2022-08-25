terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
      }
    }
}

provider "aws" {
    region = var.aws_region_paris
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

resource "aws_instance" "dev" {
    ami = "ami-09e513e9eacab10c1"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
    tags = {
        "Name" = "dev4"
    }
}

resource "aws_s3_bucket" "b-dev4" {
  bucket = "g6d-bucket-dev4"

  tags = {
    Name = "g6d-bucket-dev4"
  }
}

resource "aws_s3_bucket_acl" "b-dev4" {
  bucket = aws_s3_bucket.b-dev4.id
  acl    = "private"
}

variable "ami_aws_linux" {}
variable aws_region_paris{}
variable aws_access_key {}
variable aws_secret_key {} 
