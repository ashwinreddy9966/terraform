provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "public_ip" {
  value = aws_instance.sample.public_ip
}