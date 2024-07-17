terraform {
  backend "s3" {
    bucket         = "terra-bucket-v3"
    key            = "global/terraform.tfstate"
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

# Route53 zone is shared across staging and production
resource "aws_route53_zone" "primary" {
  name = "devopsdeployed.com"
}