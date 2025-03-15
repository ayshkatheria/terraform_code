resource "aws_db_instance" "example" {
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  allocated_storage    = 20
  storage_type         = "gp2"
  identifier           = "my-rds-instance"

  username            = local.db_credentials["username"]
  password            = local.db_credentials["password"]

  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name  # Use the subnet group
  publicly_accessible  = false
  skip_final_snapshot  = true
}
