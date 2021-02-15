resource "aws_config_config_rule" "iam-user-unused-credentials-check" {
  provider         = aws
  name             = "iam-user-unused-credentials-check"
  description      = "_CONFIG_RULE_DESCRIPTION_"
  input_parameters = "{\"maxCredentialUsageAge\":\"90\"}"

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_UNUSED_CREDENTIALS_CHECK"
  }

  depends_on = [aws_config_configuration_recorder.main]
}

