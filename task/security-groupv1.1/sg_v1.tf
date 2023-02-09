resource "aws_security_group" "sg_v1"{
  name        = var.sg_name
  description = var.description
  vpc_id      = var.vpc_id

ingress   {
    description      = "Allow http from VPC"
    from_port        = element(var.ports, count.index)
    to_port          = element(var.ports, count.index)
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  } 

  egress   {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
