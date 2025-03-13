# DEV

module "dev-app" {
     source = "./my_infra_module"
     my_env = "dev"
     instance_type = "t2.micro"
     ami = "ami-007855ac798b5175e" 
 }
 