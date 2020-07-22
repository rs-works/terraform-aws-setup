# aws_config_configuration_recorder
resource "aws_config_configuration_recorder" "config" {
  name     = "${var.prefix}-config"
  role_arn = aws_iam_role.config.arn

  recording_group {
    all_supported                 = true
    include_global_resource_types = true
  }
}
