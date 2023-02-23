resource "aws_instance" "main" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = var.sg
    tags = {
        Name = "${var.env}-instance"
    }
  
}