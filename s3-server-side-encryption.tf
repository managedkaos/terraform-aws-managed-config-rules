resource "aws_config_config_rule" "s3-server-side-encryption" {
  name        = "s3-server-side-encryption"
  description = "Checks that your Amazon S3 bucket either has Amazon S3 default encryption enabled."

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED"
  }

  depends_on = [aws_config_configuration_recorder.main]
}
