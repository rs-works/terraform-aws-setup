# aws_s3_bucket_public_access_block
resource "aws_s3_bucket_public_access_block" "event_trail" {
  bucket                  = aws_s3_bucket.event_trail.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
