# aws_s3_bucket
resource "aws_s3_bucket" "config" {
  bucket = "${var.prefix}-config"
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
