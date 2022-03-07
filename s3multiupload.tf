resource "aws_s3_bucket" "s3" {
  bucket = "naga8593"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.s3.id
  acl    = "private"
}
