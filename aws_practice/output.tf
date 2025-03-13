output "arn" {
    value = aws_instance.my_first_instance.arn
}

output "public_ip" {

    value = aws_instance.my_first_instance.public_ip
  
}