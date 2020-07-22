# aws_config_configuration_recorder_status
resource "aws_config_configuration_recorder_status" "config" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "${var.prefix}-config"
  is_enabled = true
}
