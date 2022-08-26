resource "aws_eip" "ubuntu-elastic-ip" {
  instance = var.instanceid
  vpc      = true
}
