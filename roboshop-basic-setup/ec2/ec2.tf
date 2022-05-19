resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = data.aws_ami.robot-ami.id
  instance_type          = "t3.micro"
  wait_for_fulfillment   = true
  vpc_security_group_ids = [aws_security_group.allows_all.id]

  tags = {
    Name = var.COMPONENT
  }


  provisioner "remote-exec" {
    connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        host     = self.public_ip
      }

      inline = [
            "ansible-pull -U https://github.com/ashwinreddy9966/ansible.git roboshop-pull.yml -e ENV=dev-e APP_VERSION=${APP_VERSION} -e COMPONENT=${var.COMPONENT}"
      ]
  }
}