resource "aws_instance" "sample" {
  ami                     = data.aws_ami.robot-ami.id
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
