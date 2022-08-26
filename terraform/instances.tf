
resource "aws_instance" "dev-001" {
  provider = aws.eu-west-2
  ami = var.aws_ami_v2.amazon-linux-eu-west-2
  instance_type = "t2.micro"
  key_name = aws_key_pair.kp-terraform-aws-london.key_name
  depends_on = [
    aws_key_pair.kp-terraform-aws-london,
    aws_security_group.allow_ssh-2,
    aws_s3_bucket.b-dev,
    aws_s3_bucket_acl.b-dev-acl
  ]
  vpc_security_group_ids = ["${aws_security_group.allow_ssh-2.id}"]
  tags = {
      "Name" = "dev-001"
  }
}

resource "aws_instance" "dev-002" {
  provider = aws.eu-west-3
  ami = var.aws_ami["amazon-linux-eu-west-3"]
  instance_type = "t2.micro"
  key_name = aws_key_pair.kp-terraform-aws-paris.key_name
  depends_on = [
    aws_key_pair.kp-terraform-aws-paris,
    aws_security_group.allow_ssh-2
  ]
  vpc_security_group_ids = [ "${aws_security_group.allow_ssh-3.id}" ]
  tags = {
      "Name" = "dev-002"
  }
}