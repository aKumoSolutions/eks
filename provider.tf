provider "aws" {
   profile    = "default"
   region     = "eu-west-1"
 }

 terraform {
  backend "s3" {
    bucket = "eks-state-file"
    key    = "akumosolutions/terraform.tfstate"
    region = "us-east-1"
  }
}