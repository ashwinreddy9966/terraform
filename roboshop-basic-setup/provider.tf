terraform {
  backend "s3" {
    bucket = "robot-terraform-remote-state"
    key    = "robot-basic-setup/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}
