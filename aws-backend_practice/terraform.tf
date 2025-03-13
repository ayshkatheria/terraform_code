terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

backend "s3" {
  bucket = "my-state-bucket-2025-03-13t14-26-39z"
  key = "terraform.tfstate"
  region = "us-east-1"
  dynamodb_table = "statefile_table"
}

}