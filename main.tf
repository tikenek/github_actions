provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

 terraform {
   backend "s3" {
     bucket = "tynaresen"
     key    = "default-infrastructure"
     region = "us-east-1"
   }
 }

resource "aws_s3_bucket" "terraform_state" {
  bucket = "tynaresen"

  versioning {
    enabled = true
  }
}
