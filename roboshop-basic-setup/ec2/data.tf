data "aws_ami" "robot-ami" {
  most_recent = true
  name_regex  = "rotot-with-ansible-ami"
  owners      = ["self"]
}