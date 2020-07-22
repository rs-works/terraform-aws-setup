# aws_iam_role_policy
resource "aws_iam_role_policy" "config" {
  name = "${var.prefix}-config"
  role = aws_iam_role.config.id
  policy = templatefile("${path.module}/aws_iam_role_policies/config.json.tpl",
    {
      s3_bucket = aws_s3_bucket.config.arn
    }
  )
}
