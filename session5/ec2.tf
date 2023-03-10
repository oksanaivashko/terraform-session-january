resource "aws_instance" "ec2_class_task1" {
  count = 3
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.main_sg1.id]
  tags = {
    Name        = "${var.env}-instance"
    Name1       = format("%s-instance", var.env)
  }
}

# count is mete argument, help you replicating the resources 
#will work with the most resources but some resources(egress,ingress)
#count will indicate as index and create in totla the number resources
