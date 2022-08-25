resource "aws_instance" "dev-001" {
  provider = aws.eu-west-2
  ami = "ami-00785f4835c6acf64"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh-2.id}"]
  tags = {
      "Name" = "dev-001"
  }
}

resource "aws_instance" "dev-002" {
  provider = aws.eu-west-3
  ami = "ami-0eb375f24fdf647b8"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh-3.id}"]
  tags = {
      "Name" = "dev-002"
  }
}