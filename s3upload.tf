resource "aws_s3_bucket_object" "object" {
  bucket = "naga101"
  key    = "jenkins.war"
  source = "${path.module}/jenkins.war"
  etag   = "${filemd5("${path.module}/jenkins.war")}"
}

resource "aws_s3_bucket_object" "object1" {
  bucket = "naga101"
  key    = "file.txt"
  source = "${path.module}/file.txt"
  etag   = "${filemd5("${path.module}/file.txt")}"
}
