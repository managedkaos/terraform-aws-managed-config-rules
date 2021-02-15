resource "aws_config_config_rule" "s3-bucket-ssl-requests-only-east" {
  provider    = aws
  name        = "s3-bucket-ssl-requests-only"
  description = "Checks whether S3 buckets have policies that require requests to use Secure Socket Layer (SSL)"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SSL_REQUESTS_ONLY"
  }

  depends_on = [aws_config_configuration_recorder.main]
}
