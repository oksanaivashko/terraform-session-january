resource "aws_security_group" "sg_v1"{
  name        = var.sg_name
  description = var.description
  vpc_id      = var.vpc_id

ingress   {
    description      = var.description
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_block       = [var.value.cidr]
  }

  egress   {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.value
   
  }
}
