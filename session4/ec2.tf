resource "aws_instance" "main_fronted" { 
  ami = data.aws_ami.amazon_linux_2.id                        
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.test_vpc_sg.id] 
  tags = {                               
    Name = "${var.env}-instance"
    Name1 = format("%s-instance", var.env)
  }
}
#variable + hardcode value
#var.env + instance 
#hard code takes string
#${var.env} tells string and hard code inside "-instance"

resource "aws_instance" "main_backend" { 
  ami = data.aws_ami.amazon_linux_2.id                        
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.test_vpc_sg.id] 
  tags = {                               
    Name = "${var.env}-instance"
    Name1 = format("%s-instance", var.env)
  }
}

# References:
# 1. Resource 
# 2. Input Variable
# 3. Data source