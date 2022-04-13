provider "aws" {
region = "us-east-1"
profile = "tynar-admin"
}


terraform {
  backend "s3" {
    bucket         = "tynaresen"
    key            = "mykey/terraform.tfstate"
    region         = "us-east-1"
  }
}

resource "aws_s3_bucket" "terraform_state" {
   bucket = "tynaresen"

   versioning {
     enabled = true
  }
}


