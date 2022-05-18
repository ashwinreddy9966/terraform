resource "aws_instance" "sample" {
  ami                     = "ami-0bb6af715826253bf"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]

  tags = {
    Name = "HelloWorld"
  }
}

variable "sg" {}

output "public_ip" {
  value = aws_instance.sample.public_ip
}