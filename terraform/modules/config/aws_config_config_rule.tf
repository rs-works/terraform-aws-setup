# aws_config_config_rule
resource "aws_config_config_rule" "ssh" {
  depends_on  = [aws_config_configuration_recorder.config]
  name        = "restricted-ssh"
  description = "使用中のセキュリティグループが、制限されない受信 SSH トラフィックを不許可にするかどうかを確認します。"

  source {
    owner             = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }

  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }
}

resource "aws_config_config_rule" "mfa" {
  depends_on  = [aws_config_configuration_recorder.config]
  name        = "mfa-enabled-for-iam-console-access"
  description = "コンソールパスワードを使用するすべてのIAMユーザーに対してMulti-Factor Authentication (MFA) が有効になっているかどうかを確認します。 MFA が有効な場合、ルールは準拠しています。"

  source {
    owner             = "AWS"
    source_identifier = "MFA_ENABLED_FOR_IAM_CONSOLE_ACCESS"
  }
}
