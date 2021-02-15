resource "aws_config_config_rule" "rds-instance-public-access" {
  name        = "rds-instance-public-access"
  description = "Check whether the Amazon Relational Database Service instances are not publicly accessible."

  source {
    owner             = "AWS"
    source_identifier = "RDS_INSTANCE_PUBLIC_ACCESS_CHECK"
  }

  depends_on = [aws_config_configuration_recorder.main]
}
