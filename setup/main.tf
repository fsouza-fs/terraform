provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_key_pair" "my-ssh-key" {
  key_name   = "my-ssh-key"
  public_key = var.ssh_key
}

module "SecurityGroup" {
  source = "../modules/SecurityGroup"
}

module "EC2" {
  source = "../modules/EC2"
  secgroupid = module.SecurityGroup.security.id
}

module "Network" {
  source = "../modules/Network"
  instanceid = module.EC2.instance.id
}
