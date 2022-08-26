terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  alias = "eu-west-2"
  region = "eu-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
provider "aws" {
  alias = "eu-west-3"
  region = "eu-west-3"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable aws_access_key {}
variable aws_secret_key {}
variable aws_ami_v2 {}