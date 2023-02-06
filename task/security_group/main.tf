resource "aws_security_group" "Task" {
  name        = "main"
  description = "Allow inbound traffic"
  vpc_id      = "vpc-0a42426aa52e0c8f9"

  ingress {
    description      = "Allow SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow TCP form VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  ingress {
    description      = "Allow HTTPS form VPC"
    from_port        = 433
    to_port          = 433
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
ingress {
    description      = "Allow MySQL port from VPC"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # All ports open 
    cidr_blocks      = ["0.0.0.0/0"]
  }
}