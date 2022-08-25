terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key = aws_access_key
  secret_key = aws_secret_key
}

provider "aws" {
  alias = "eu-west-2"
  region = "eu-west-2"
}
provider "aws" {
  alias = "eu-west-3"
  region = "eu-west-3"
}

variable aws_access_key {}
variable aws_secret_key {}
