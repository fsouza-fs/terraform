resource "aws_instance" "ubuntu" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.secgroupid]
    key_name = "my-ssh-key"
    associate_public_ip_address = true
    tags = {
        Name = "Ubuntu"
    }
}
