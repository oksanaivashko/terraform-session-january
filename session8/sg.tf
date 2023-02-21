resource "aws_security_group" "main" {   
  name        = "main"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"  
    cidr_blocks      = ["0.0.0.0/0"] 
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp" 
    cidr =  ["0.0.0.0/0"]
  }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # string # All ports and protocols
    cidr_blocks      = ["0.0.0.0/0"] 
  }
}