#   --- Create subnets - private ----

resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = var.availability_zone[0]
  cidr_block        = var.cidr_block[3]
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = var.availability_zone[1]
  cidr_block        = var.cidr_block[4]
}

resource "aws_subnet" "private_subnet_c" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = var.availability_zone[2]
  cidr_block        = var.cidr_block[5]
}

#--- Create a Private Route Table ---

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.task_vpc.id

  route {
    #cidr_block = var.private_route_table
    nat_gateway_id = aws_nat_gateway.nat_gway.id
  }
}

#   --- Create NAT gateway ---  

resource "aws_nat_gateway" "nat_gway" {
  subnet_id         = aws_subnet.private_subnet_a.id
  connectivity_type = "public"
  allocation_id     = aws_eip.nat_gway_eip.id
  tags = {
    Name = var.nat_gway
  }
}


#Allocate Elastic IP Address

resource "aws_eip" "nat_gway_eip" {
  vpc = true
  tags = {
    Name = var.nat_eip
  }
}