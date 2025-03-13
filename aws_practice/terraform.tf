terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 
#created a backend for saving statefile on s3 and maintaing lock transactions on dynamodb

  backend "s3" {
    bucket = "bucket-for-images-0122"
    key = "terraform.tf"
    region = "us-east-1"
    use_lockfile   = true                    # Enabling the use of a lock file
  }

}

resource "aws_dynamodb_table" "state_lock" {
  name           = "my_dynamodb_state_table_new"   # This must match your backend configuration
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
 