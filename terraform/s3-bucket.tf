resource "aws_s3_bucket" "b-dev" {
  provider = aws.eu-west-2
  bucket = "g6d-bucket-dev"
  tags = {
    Name = "g6d-bucket-dev"
  }
}

resource "aws_s3_bucket_acl" "b-dev-acl" {
  provider = aws.eu-west-2
  bucket = aws_s3_bucket.b-dev.id
  acl    = "private"
}