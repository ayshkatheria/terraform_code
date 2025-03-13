
# resource "aws_key_pair" "deploy" {
#   key_name   = "terra-key"
#   public_key = "terra-key"
# }


resource "aws_instance" "my_first_instance" {
  
   ami = var.ami_name
   instance_type = var.instance_type
   key_name = "terra-key"

   tags = {
     Name = var.instance_name
   }

}