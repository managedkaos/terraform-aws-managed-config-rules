resource "aws_config_config_rule" "vpc-flow-logs-enabled" {
  name        = "vpc-flow-logs-enabled"
  description = "Checks whether Amazon Virtual Private Cloud flow logs are found and enabled for Amazon VPC."

  source {
    owner             = "AWS"
    source_identifier = "VPC_FLOW_LOGS_ENABLED"
  }

  depends_on = [aws_config_configuration_recorder.main]
}
