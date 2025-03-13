resource "aws_s3_bucket" "my_first_bucket" {

    bucket = var.s3_bucket_name
    tags = {
      Name = var.s3_bucket_name
    }
    
}