resource "aws_eip" "jenkins-elastic-ip" {
  instance = var.instanceid
  vpc      = true
}
