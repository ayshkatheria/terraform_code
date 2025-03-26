
resource "aws_s3_bucket" "backend_bucket" {
  
bucket = "my-terraform-state-bucket-aysh-272025"
tags = {
  Name = "my-terraform-state-bucket-aysh-272025"
}
# acl = "private"

}

# resource "aws_s3_bucket_acl" "acl_access" {
#   bucket = aws_s3_bucket.backend_bucket.id
#   acl    = "private"
# }

resource "aws_s3_bucket_versioning" "version_bucket" {
  bucket = aws_s3_bucket.backend_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}