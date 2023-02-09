resource "aws_vpc" "task_vpc" {       
  #name             = var.vpc_name
  cidr_block      = var.vpc_cidr_block
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name
  }
}