resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow_ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["85.247.153.90/32"]

  }
  tags = {
    Name = "allow_all"
  }
}