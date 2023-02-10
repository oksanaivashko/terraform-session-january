#   --- Create subnets - private ----

 resource "aws_subnet" "private_subnet_a" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.private_subnet_az[0]
  cidr_block = var.private_subnet_cidr_block[0]
}

resource "aws_subnet" "private_subnet_b" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.private_subnet_az[1]
  cidr_block = var.private_subnet_cidr_block[1]
}

resource "aws_subnet" "private_subnet_c" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.private_subnet_az[2]
  cidr_block = var.private_subnet_cidr_block[2]
}

#   --- Create NAT gateway ---  

resource "aws_nat_gateway" "nat_gway"{
    subnet_id = var.public_subnet_az[0]
    connectivity_type = "public"
    allocation_id = var.nat_eip
    tags ={
        Name = var.nat_gway
    }
}


#Allocate Elastic IP Address

resource "aws_eip" "nat_gway_eip"{
    vpc = true
    tags = {
        Name = var.nat_eip
    }
}