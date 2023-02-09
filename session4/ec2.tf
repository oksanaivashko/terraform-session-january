resource "aws_instance" "first_ec2" { 
  ami = data.aws_ami.amazon_linux_2.id                        
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.test_vpc_sg.id] 
  tags = {                               
    Name = var.env
  }
}
