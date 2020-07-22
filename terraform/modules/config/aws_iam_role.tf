# aws_iam_role
resource "aws_iam_role" "config" {
  name               = "${var.prefix}-config"
  path               = "/"
  assume_role_policy = file("${path.module}/aws_iam_policies/config_assume_role_policy.json")
}
