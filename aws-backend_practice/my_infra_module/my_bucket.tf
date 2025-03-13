resource "aws_s3_bucket" "my_infra_bucket" {

   bucket = "${var.my_env}-bucket-${lower(replace(timestamp(), ":", "-"))}"
   tags = {
     name = "${var.my_env}-bucket-${lower(replace(timestamp(), ":", "-"))}"
   }

}

# "my-state-bucket-${lower(replace(timestamp(), ":", "-"))}"