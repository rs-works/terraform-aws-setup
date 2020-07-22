# aws_s3_bucket
resource "aws_s3_bucket" "event_trail" {
  bucket = "${var.prefix}-event-trail"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Environment = var.environment
  }

  lifecycle {
    prevent_destroy = true
  }
}
