#   --- Create Subnets - Public ---

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.task_vpc.id
    az = var.public_subnet_az
  cidr  = var.public_subnet_cidr_block[0]
}

#resource "aws_subnet" "public_b" {
#    vpc_id = aws_vpc.task_vpc.id
#  availability_zone = var.public_subnet_b
#  cidr_block       = var.public_subnet_cidr_block_b
#}
#resource "aws_subnet" "public_c" {
#    vpc_id = aws_vpc.task_vpc.id
#  availability_zone = var.public_subnet_c
#  cidr_block       = var.public_subnet_cidr_block_c
#}
#
##    --- Create Internet Gateway and attach TO VPC ---
#
#resource "aws_internet_gateway" "int_gway" {
#  vpc_id = aws_vpc.task_vpc.id
#}
#
##   --- Create a Route Table - Public ---
#
#resource "aws_route_table" "public_route_table" {
#  vpc_id = aws_vpc.task_vpc.id
#
#  route {
#    cidr_block = var.public_route_table_cidr
#    gateway_id = aws_internet_gateway.int_gway.id
#  }
#}
#