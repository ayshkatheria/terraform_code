resource "aws_instance" "infra_servers" {
    
    count = 2
    ami = var.aws_ami
    # key_name = ""
    instance_type = var.instance_type
    tags = {
      name = "${var.my_env}-machines"
    }
  
}