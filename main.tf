data "aws_secretsmanager_secret" "rds_secret" {
  name = "my-rds-secret"  # The name of the secret you created with AWS CLI
}

data "aws_secretsmanager_secret_version" "rds_secret_version" {
  secret_id = data.aws_secretsmanager_secret.rds_secret.id
}

locals {
  db_credentials = jsondecode(data.aws_secretsmanager_secret_version.rds_secret_version.secret_string)
}
