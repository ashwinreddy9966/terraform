resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = data.aws_ami.robot-ami.id
  instance_type          = "t3.micro"
  wait_for_fulfillment   = true

  tags = {
    Name = var.COMPONENT
  }
}