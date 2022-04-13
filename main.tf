provider "aws" {
region = "us-east-1"
profile = "tynar-admin"
}


terraform {
    backend "s3" {
    bucket = "tynaresen"
    encrypt = true
    key = "state.tfstate"
    region = "us-east-1"
    profile = "tynar-admin" 
  }
}
