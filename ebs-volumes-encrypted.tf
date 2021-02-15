resource "aws_config_config_rule" "ebs-encrypted-volumes" {
  name        = "ebs-encrypted-volumes"
  description = "Checks whether the EBS volumes that are in an attached state are encrypted."

  source {
    owner             = "AWS"
    source_identifier = "ENCRYPTED_VOLUMES"
  }

  depends_on = [aws_config_configuration_recorder.main]
}
