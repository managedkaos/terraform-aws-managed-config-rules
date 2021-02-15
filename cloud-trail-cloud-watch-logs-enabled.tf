resource "aws_config_config_rule" "cloud-trail-cloud-watch-logs-enabled" {
  provider    = aws
  name        = "cloud-trail-cloud-watch-logs-enabled"
  description = "Checks whether AWS CloudTrail trails are configured to send logs to Amazon CloudWatch Logs. The trail is NON_COMPLIANT if the CloudWatchLogsLogGroupArn property of the trail is empty."

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED"
  }

  depends_on = [aws_config_configuration_recorder.main]
}

