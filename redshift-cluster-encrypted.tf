resource "aws_config_config_rule" "redshift-cluster-encrypted" {
  name        = "redshift-cluster-encrypted"
  description = "Checks whether Amazon Redshift clusters are encrypted."

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_CLUSTER_CONFIGURATION_CHECK"
  }

  input_parameters = <<EOF
{
    "clusterDbEncrypted":"true",
    "loggingEnabled":"true"
}
EOF
  depends_on       = [aws_config_configuration_recorder.main]
}
