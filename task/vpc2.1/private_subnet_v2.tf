#   --- Create subnets - private ----

 resource "aws_subnet" "private_subnet_a" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.public_subnet_az[0]
  cidr_block = var.public_subnet_cidr_block[0]
}

resource "aws_subnet" "private_subnet_b" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.public_subnet_az[1]
  cidr_block = var.public_subnet_cidr_block[1]
}

resource "aws_subnet" "private_subnet_c" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.public_subnet_az[2]
  cidr_block = var.public_subnet_cidr_block[2]
}

#   --- Create a route table - private ---
resource "aws_route_table" "tasktest_private_route_table" {
  vpc_id = aws_vpc.task_vpc.id

  route {
    cidr_block = var.public_route_table_cidr
    nat_gateway_id = aws_nat_gateway.nat_gway.id
  }
}

##   --- Create NAT gateway ---  
#
#resource "aws_nat_gateway" "nat_gway" {
#  connectivity_type = "public"
#  subnet_id         = aws_subnet.public_a.id
#}
#
##   --- Allocate Elastic IP Address ---
#resource "var.nat_eip" {
#    vpc = true 
#}
#