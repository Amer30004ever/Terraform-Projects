#---------------- Create EC2 Instances -------------------#
resource "aws_instance" "bastion_instance" {
ami = "ami-0182f373e66f89c85 "
instance_type = "t2.micro"
subnet_id = aws_subnet.pub_subnet1.id
vpc_security_group_ids = [aws_security_group.jumper-SG.id]
associate_public_ip_address = true
key_name = "key"
tags = {
Name = "bation server"
}
}