terraform {
  backend "s3" {
    bucket         = "terra-bucket-v3"
    key            = "modul-example/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terra-lock-v3"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

module "consul" {
  source = "git@github.com:hashicorp/terraform-aws-consul.git"
}