resource "aws_security_group" "allow_ssh-2" {
  provider = aws.eu-west-2
  name        = "allow_ssh"
  description = "allow_ssh"
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["85.247.159.250/32"]

  }
  tags = {
    Name = "allow_all"
  }
}
resource "aws_security_group" "allow_ssh-3" {
  provider = aws.eu-west-3
  name        = "allow_ssh"
  description = "allow_ssh"
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["85.247.159.250/32"]

  }
  tags = {
    Name = "allow_all"
  }
}