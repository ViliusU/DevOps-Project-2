terraform {
  cloud {
    organization = "Vilius-Organization"
    workspaces {
      name = "WordPress_app_us_north_1_DEV"
    }
  }
  required_version = ">=1.4.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      App         = var.app_name
      Environment = var.environment
      Terraform   = "True"
    }
  }
}
