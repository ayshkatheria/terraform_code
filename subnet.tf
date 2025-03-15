
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "my-rds-subnet-group"
  subnet_ids = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]  # Ensure at least 2 AZs

  tags = {
    Name = "My RDS Subnet Group"
  }
}

