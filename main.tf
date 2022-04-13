provider "aws" {
  version = "= 3.74.2"
  region  = "us-east-1"
}


 terraform {
   backend "s3" {
     bucket = "tynaresen"
     key    = "path/to/my/key"
     region = "us-east-1"
   }
 }

resource "aws_s3_bucket" "terraform_state" {
  bucket = "tynaresen"

  versioning {
    enabled = true
  }
}
