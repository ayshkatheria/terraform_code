# DEV

module "dev-app" {
     source = "./my_infra_module"
     my_env = "dev"
     instance_type = "t2.micro"
     aws_ami = "ami-04b4f1a9cf54c11d0" 
 }
 
 #prd
 module "prd-app" {
     source = "./my_infra_module"
     my_env = "prd"
     instance_type = "t2.micro"
     aws_ami = "ami-04b4f1a9cf54c11d0" 
 }
 
 #tst/stg
 module "stg-app" {
     source = "./my_infra_module"
     my_env = "tst"
     instance_type = "t2.small"
     aws_ami = "ami-04b4f1a9cf54c11d0" 
 }