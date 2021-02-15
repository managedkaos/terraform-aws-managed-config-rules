provider "aws" {}

terraform {
  backend "s3" {
    bucket = BUCKET_NAME
    key    = KEY_NAME
    region = AWS_REGION
  }
}

resource "aws_config_configuration_recorder" "main" {
  name     = RECORDER_NAME
  role_arn = "arn:aws:iam::YOUR_AWS_ACCT_NUMBER:role/aws-service-role/config.amazonaws.com/AWSServiceRoleForConfig"
}
