resource "aws_security_group" "sg_2_terraform" {
  name        = "allow ssh private"
  description = "Allow ssh inbound traffic for only vpc cidr"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_ssh_private"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4_2" {
  security_group_id = aws_security_group.sg_2_terraform.id
  cidr_ipv4         = aws_vpc.main.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_3000_ipv4_2" {
  security_group_id = aws_security_group.sg_2_terraform.id
  cidr_ipv4         = aws_vpc.main.cidr_block
  from_port         = 3000
  ip_protocol       = "tcp"
  to_port           = 3000
}
