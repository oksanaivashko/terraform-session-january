resource "aws_security_group" "sg_v1" {
  name        = var.sg_name
  description = var.description
  vpc_id      = var.vpc_id

  ingress {
    description = var.description
    from_port   = var.port1
    to_port     = var.port1
    protocol    = var.protocol
    cidr_blocks = [var.cidr]
  }
  ingress {
    description = var.description
    from_port   = var.port2
    to_port     = var.port2
    protocol    = var.protocol
    cidr_blocks = [var.cidr]
  }

  ingress {
    description = var.description
    from_port   = var.port3
    to_port     = var.port3
    protocol    = var.protocol
    cidr_blocks = [var.cidr]
  }
  ingress {
    description = var.description
    from_port   = var.port4
    to_port     = var.port4
    protocol    = var.protocol
    cidr_blocks = [var.cidr]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.protocol
    cidr_blocks = [var.cidr]
  }
}

