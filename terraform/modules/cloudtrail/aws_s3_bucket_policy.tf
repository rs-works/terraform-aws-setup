# aws_s3_bucket_policy
resource "aws_s3_bucket_policy" "event_trail" {
  bucket = aws_s3_bucket.event_trail.id
  policy = templatefile("${path.module}/aws_s3_bucket_policies/event_trail.json.tpl",
    {
      account_id = var.aws_account_id
      s3_bucket  = aws_s3_bucket.event_trail.id
    }
  )
}
