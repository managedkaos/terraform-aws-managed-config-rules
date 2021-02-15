resource "aws_config_config_rule" "s3-bucket-public-write-prohibited" {
  name        = "s3-bucket-public-write-prohibited"
  description = "Checks that your Amazon S3 buckets do not allow public write access."

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_WRITE_PROHIBITED"
  }

  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-bucket-public-read-prohibited" {
  name        = "s3-bucket-public-read-prohibited"
  description = "Checks that your Amazon S3 buckets do not allow public read access."

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }

  depends_on = [aws_config_configuration_recorder.main]
}
