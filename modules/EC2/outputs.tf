output "instance_ip" {
  description = "The public ip for this instance"
  value = aws_instance.ubuntu.public_ip
}

output "instance" {
  description = "The public ip for this instance"
  value = aws_instance.ubuntu
}
