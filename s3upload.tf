
resource "aws_s3_bucket" "b" {
  bucket = "naga111"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

