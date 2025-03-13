# variable
variable "aws_dynamodb_name" {
    default = "statefile_table"
}

# Passing timestamp to create a bucket uniquely everytime.
variable "aws_s3_bucket_name" {
    default = "my-state-bucket"
}

# Passing region for provider file
variable "aws_region" {
     default = "us-east-1"
 }

# S3 bucket for tfstate files
resource "aws_s3_bucket" "my_state_file_bucket" {
    bucket = "my-state-bucket-2025-03-13t14-26-39z"
    tags = {
      name = "my-state-bucket-2025-03-13t14-26-39z"
    }
  
}
# dynamodb for lockfiles
resource "aws_dynamodb_table" "my_dynamodb_state_table" {

      name = "statefile_table"
      hash_key = "LockID"
       attribute {
         name = "LockID"
         type = "S"
       }
      billing_mode = "PAY_PER_REQUEST"

      tags = {
        name = "statefile_table"
      }

  
}
