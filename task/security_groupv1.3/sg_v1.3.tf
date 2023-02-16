   
resource "aws_security_group" "sg_v1.1" {
  name        = replace(local.name , "resource","securitygroup")
  description = "This security group allows inbound traffic for 4 ports"
  vpc_id = var.vpc_id
  tags = local.common_tags
}

resource "aws_security_group_rule" "ingress" {
  count = length(var.ports)
  type              = "ingress"
  to_port           = element(var.ports , count.index) 
  from_port         = element(var.ports , count.index)
  cidr_blocks = [ var.cidr_block_all ]
  security_group_id = aws_security_group.sg_v1.1.id
  protocol          = var.protocol
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  from_port         = 0
  security_group_id = aws_security_group.sg_v1.1.id
  cidr_blocks = [ var.cidr_block_all ]
}
