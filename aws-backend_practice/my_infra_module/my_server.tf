resource "aws_instance" "infra_servers" {
    
    count = 1
    ami = var.aws_ami
    key_name = "terra_key"
    instance_type = var.instance_type
    tags = {
      name = "${var.my_env}-machines"
    }
  
}