output "elastic_ip" {
  description = "The elastic ip for this instance"
  value = aws_eip.jenkins-elastic-ip.public_ip
}
