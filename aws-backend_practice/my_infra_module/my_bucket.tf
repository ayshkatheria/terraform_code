resource "aws_s3_bucket" "my_infra_bucket" {

   bucket = "${var.my_env}-bucket"
   tags = {
     name = "${var.my_env}-bucket"
   }

}