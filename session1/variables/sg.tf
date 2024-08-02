resource "aws_security_group" "roboshop-all" {   #roboshop-all this name is for terraform reference
  name        = var.terraform_sg        #For AWS SG resource reference
  description = var.terraform_sg_desc
  vpc_id      = var.roboshop_vpc

  tags = {
    Name = var.terraform_sg
  }
}


resource "aws_vpc_security_group_ingress_rule" "roboshop_ingress" {
  security_group_id = aws_security_group.roboshop-all.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 0
  ip_protocol       = "tcp"
  to_port           = 0
}


resource "aws_vpc_security_group_egress_rule" "roboshop_egress" {
  security_group_id = aws_security_group.roboshop-all.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
