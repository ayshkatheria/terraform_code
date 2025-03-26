resource "aws_db_instance" "rds_database" {
  identifier        = "rds-db-instance"
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t3.micro"
  username          = "admin"
#   password          = "YourSecurePassword"
 password = data.aws_secretsmanager_secret_version.database_password.secret_string
 skip_final_snapshot = true
db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  multi_az          = false
 publicly_accessible = false  # Keep it private in the VPC
}

data "aws_secretsmanager_secret_version" "database_password" {
  secret_id = "my-database-password"
}