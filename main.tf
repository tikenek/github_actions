provider "aws" {
   region     : ${{ secrets.AWS_DEFAULT_REGION }}
   access_key : ${{ secrets.AWS_ACCESS_KEY_ID }}
   secret_key : ${{ secrets.AWS_SECRET_ACCESS_KEY }}
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


