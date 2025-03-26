terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket-aysh-272025"
    key = "terraform-state-file"
    region ="ap-south-1"
  }
  

}