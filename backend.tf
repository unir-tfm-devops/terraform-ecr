terraform {
  backend "s3" {
    bucket  = "unir-tfm-eks-terraform-state"
    key     = "ecr/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
