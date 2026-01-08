provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket         = "yuvaraj00761-tfstate-bucket-00761"
    key            = "3tier/prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "dynamodb-terraform-state-lock"
    encrypt        = true
  }
}
