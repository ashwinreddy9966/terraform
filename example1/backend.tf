terraform {
  backend "s3" {
    bucket = "robot-terraform-remote-state"
    key    = "example1/terraform.tfstate"
    region = "us-east-1"
  }
}