
# # Adding Backend as S3 for Remote State Storage
# terraform {
#   backend "s3" {
#     bucket = "terraform-on-aws-eks-vztme"
#     key    = "vztme/dev/eks-cluster/app1k8s/terraform.tfstate"
#     region = "eu-west-2"

#     # For State Locking
#     dynamodb_table = "dev-ekscluster"
#   }
# }


# Terraform Block
terraform {
  required_version = ">= 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"  
    }
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

