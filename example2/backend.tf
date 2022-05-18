terraform {
  backend "s3" {
    bucket = "robot-terraform-remote-state"
    key    = "example2/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}


