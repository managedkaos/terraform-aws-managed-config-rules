resource "aws_config_config_rule" "cmk-backing-key-rotation-enabled" {
  name        = "cmk-backing-key-rotation-enabled"
  description = "Checks that key rotation is enabled for each customer master key (CMK)."

  source {
    owner             = "AWS"
    source_identifier = "CMK_BACKING_KEY_ROTATION_ENABLED"
  }

  depends_on = [aws_config_configuration_recorder.main]
}
