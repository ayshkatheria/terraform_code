resource "aws_dynamodb_table" "my_state_table" {

    name = var.dynamodb_name
    hash_key = "Lock_ID"
    attribute {
      name = "Lock_ID"
      type = "S"
    }
    billing_mode = "PAY_PER_REQUEST"
    tags = {
       Name = var.dynamodb_name
    }
    
}