# aws_iam_account_alias
resource "aws_iam_account_alias" "alias" {
  account_alias = var.prefix
}

# aws_iam_account_password_policy
resource "aws_iam_account_password_policy" "policy" {
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  allow_users_to_change_password = true
}
