variable "s3_bucket_name" {
  default = "bucket-for-images-0122"
}

variable "ami_name" {
  description = "AMI ID for EC2 instance "
  default = "provide your ami"
}

variable "instance_type" {
  description = "Type of Intance required"
  default = "t2.micro"
}

variable "instance_name" {
    default = "aysh_ec2_machine"
}

variable "dynamodb_name" {
    default = "my_dynamodb_state_table"
}

variable "aws_region" {
    default = "us-east-1"
}