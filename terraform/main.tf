terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "dev" {
  provider = aws.eu-west-2
  ami = "ami-09e513e9eacab10c1"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh-2.id}"]
  tags = {
      "Name" = "dev4"
  }
}

resource "aws_instance" "dev" {
  provider = aws.eu-west-3
  ami = "ami-09e513e9eacab10c1"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh-3.id}"]
  tags = {
      "Name" = "dev4"
  }
}

resource "aws_s3_bucket" "b-dev" {
  provider = aws.eu-west-2
  bucket = "g6d-bucket-dev"
  tags = {
    Name = "g6d-bucket-dev"
  }
}

resource "aws_s3_bucket_acl" "b-dev" {
  provider = aws.eu-west-2
  bucket = aws_s3_bucket.b-dev.id
  acl    = "private"
}

variable "ami_aws_linux" {}
variable aws_access_key {}
variable aws_secret_key {}
