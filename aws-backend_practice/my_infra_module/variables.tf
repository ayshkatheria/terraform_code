# ########################## Variables for my_server #################################

variable "aws_ami" {
    description = "value of the ami"
    type = string
}

# we will use this in main.tf file to pass value for this under different env.
variable "instance_type" {
    description = "value of the instance type"
    type = string
}

# ###################### This variable will use to pass different env. name such as dev, prod, test in all the resources ##########################
variable "my_env" {
    description = "The environment for the app"
    type = string
}