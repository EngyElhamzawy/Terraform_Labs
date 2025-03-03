resource "aws_instance" "application" {
  ami             = "ami-05b10e08d247fb927" 
  instance_type   = "t2.micro" 
  subnet_id       = aws_subnet.private_sub.id

  tags = {
    Name = "application"
  }

  vpc_security_group_ids = [aws_security_group.sg_2_terraform.id]
}
