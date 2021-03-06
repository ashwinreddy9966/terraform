resource "aws_security_group" "allows_all" {
  name        = "allow-${var.COMPONENT}"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "Allows all"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name =  "allow-${var.COMPONENT}"
  }
}