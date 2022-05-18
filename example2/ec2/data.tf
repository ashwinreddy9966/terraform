data "aws_ami" "example" {
  most_recent = true
  name_regex  = "rotot-with-ansible-ami	"
  owners      = ["self"]
}