#--- Create subnets - private ----

resource "aws_subnet" "private_a" {
    vpc_id = aws_vpc.task_vpc.id
  availability_zone = var.private_subnet_a
  cidr_block       = var.private_subnet_cidr_block_a
}

resource "aws_subnet" "private_b" {
    vpc_id = aws_vpc.task_vpc.id
  availability_zone = var.private_subnet_b
  cidr_block       = var.private_subnet_cidr_block_b
}

resource "aws_subnet" "private_c" {
    vpc_id = aws_vpc.task_vpc.id
  availability_zone = var.private_subnet_c
  cidr_block       = var.private_subnet_cidr_block_c
}

#--- Create a route table - private ---
resource "aws_route_table" "tasktest_private_route_table" {
  vpc_id = aws_vpc.task_vpc.id

  route {
    cidr_block = var.public_route_table_cidr
    nat_gateway_id = aws_nat_gateway.nat_gway.id
  }
}

#--- Create NAT gateway ---  

resource "aws_nat_gateway" "nat_gway" {
  connectivity_type = "public"
  subnet_id         = aws_subnet.public_a.id
}

#--- Allocate Elastic IP Address ---
resource "var.nat_eip" {
    vpc = true 
}
