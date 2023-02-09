#Create VPC in GUI
#1. Name
#2. IPv4 CIDR block = manually (10.0.0.0/16) 
#3. IPv6 CIDR block = default default 
#4. Tenancy = default  
#5. tags = optinal  

resource "aws_vpc" "task_vpc" {       
  name             = var.vpc_name
  cidr_blocks      = var.cidr_block
  instance_tenancy = "default"
    Name = var.vpc_name
  }