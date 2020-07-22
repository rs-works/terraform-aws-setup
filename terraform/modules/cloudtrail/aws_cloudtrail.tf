# aws_cloudtrail
resource "aws_cloudtrail" "event_trail" {
  depends_on = [aws_s3_bucket_policy.event_trail]

  name                          = "${var.prefix}-event-trail"
  s3_bucket_name                = aws_s3_bucket.event_trail.id
  s3_key_prefix                 = ""
  is_multi_region_trail         = true
  include_global_service_events = true
  enable_log_file_validation    = true

  tags = {
    Environment = var.environment
  }
}
