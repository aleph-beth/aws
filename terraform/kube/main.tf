terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "AdminIAM"
  region  = "eu-west-1"
}



resource "aws_iam_user" "kube_user" {
  name = "eks_user"
  tags = {
    tag-key = "Spark"
  }
}

