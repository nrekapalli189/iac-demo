resource "aws_s3_bucket_object" "object" {
  bucket = "naga101"
  key    = "vars.tf"
  source = "${path.module}/vars.tf"
  etag   = "${filemd5("${path.module}/vars.tf")}"
}

resource "aws_s3_bucket_object" "object1" {
  bucket = "naga101"
  key    = "instance.tf"
  source = "${path.module}/instance.tf"
  etag   = "${filemd5("${path.module}/instance.tf")}"
}
