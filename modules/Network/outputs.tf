output "elastic_ip" {
  description = "The elastic ip for this instance"
  value = aws_eip.ubuntu-elastic-ip.public_ip
}
