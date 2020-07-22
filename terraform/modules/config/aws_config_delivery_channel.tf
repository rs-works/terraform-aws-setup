# aws_config_delivery_channel
resource "aws_config_delivery_channel" "config" {
  depends_on     = [aws_config_configuration_recorder.config]
  name           = "${var.prefix}-config"
  s3_bucket_name = aws_s3_bucket.config.id

  snapshot_delivery_properties {
    delivery_frequency = "One_Hour"
  }

}
