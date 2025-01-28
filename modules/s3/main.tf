resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = var.acl

  tags = {
    Environment = var.environment
  }
}
