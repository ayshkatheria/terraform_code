resource "aws_dynamodb_table" "my_infra_database" {

        name = "${var.my_env}-database"
        hash_key = "USERID"
        attribute {
          name = "USERID"
          type = "S"
        }
        billing_mode = "PAY_PER_REQUEST"
        tags = {
          name = "${var.my_env}-database"
        }
}