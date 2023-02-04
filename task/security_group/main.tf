resource "aws_security_group" "Task" {
  name        = "main"
  description = "Allow inbound traffic"

  ingress {
    description      = "Allow SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }

  ingress {
    description      = "Allow TCP form VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }


  ingress {
    description      = "Allow HTTPS form VPC"
    from_port        = 433
    to_port          = 433
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }
ingress {
    description      = "Allow RDS port form VPC"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}