# variable
variable "aws_dynamodb_name" {
    default = "statefile_table"
}

# Passing timestamp to create a bucket uniquely everytime.
variable "aws_s3_bucket_name" {
    default = "my-state-bucket-${timestamp()}"
}

# Passing region for provider file
variable "aws_region" {
     default = "us-east-2"
 }


# dynamodb for lockfiles
resource "aws_dynamodb_table" "my_dynamodb_state_table" {

      name = var.aws_dynamodb_name
      hash_key = "LockID"
       attribute {
         name = "LockID"
         type = "S"
       }
      billing_mode = "PAY_PER_REQUEST"

      tags = {
        name = var.aws_dynamodb_name
      }

  
}

# S3 bucket for tfstate files
resource "aws_s3_bucket" "my_state_file_bucket" {

    bucket = var.aws_s3_bucket_name
    tags = {
      name = var.aws_s3_bucket_name
    }
  
}