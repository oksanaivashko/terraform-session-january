resource "aws_security_group" "main_sg1" {
  name        = "${var.env}-sg"
  description = format("%s-sg", var.env)
  #vpc_id      = var.vpc_id
}
resource "aws_security_group_rule" "ingress" {
  count = 2
  type              = "ingress"
  to_port           = element( var.ports, 0) 
  protocol          = "-tcp"
  from_port         = element( var.ports, 0) 
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main_sg1.id
}
resource "aws_security_group_rule" "egress" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  from_port         = 0
  security_group_id = aws_security_group.main_sg1.id
   cidr_blocks = ["0.0.0.0/0"]
}



