provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "tls_private_key" "generated-ssh-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "my-ssh-key" {
  key_name   = "my-ssh-key"
  public_key = tls_private_key.generated-ssh-key.public_key_openssh

  provisioner "local-exec" { # Create "myKey.pem" to your computer!!
    command = "echo '${tls_private_key.generated-ssh-key.private_key_pem}' > ./myKey.pem && chmod +400 ./myKey.pem"
  }
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
