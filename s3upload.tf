resource "aws_s3_bucket_object" "object" {
  bucket = "naga101"
  key    = "jenkins.war"
  source = "/root/jenkins.war"
  etag   = "${filemd5("${/root}/jenkins.war")}"
}

resource "aws_s3_bucket_object" "object1" {
  bucket = "naga101"
  key    = "file.txt"
  source = "/root/file.txt"
  etag   = "${filemd5("${/root}/file.txt")}"
}
