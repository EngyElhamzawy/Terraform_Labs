resource "aws_instance" "bastion" {
  ami             = "ami-05b10e08d247fb927" 
  instance_type   = "t2.micro" 
  subnet_id       = aws_subnet.public_sub.id

  tags = {
    Name = "bastion"
  }

  vpc_security_group_ids = [aws_security_group.sg_1_terraform.id]
}
