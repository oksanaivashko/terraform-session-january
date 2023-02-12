#   --- Create Subnets - Public ---

resource "aws_subnet" "public_subnet_a" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.public_subnet_az[0]
  cidr_block = var.public_subnet_cidr_block[0]
}

resource "aws_subnet" "public_subnet_b" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.public_subnet_az[1]
  cidr_block = var.public_subnet_cidr_block[1]
}

resource "aws_subnet" "public_subnet_c" {
    vpc_id = aws_vpc.task_vpc.id
    availability_zone = var.public_subnet_az[2]
  cidr_block = var.public_subnet_cidr_block[2]
}


#    --- Create Internet Gateway and attach TO VPC ---

resource "aws_internet_gateway" "int_gway" {
  vpc_id = aws_vpc.task_vpc.id
}

#   --- Create a Route Table - Public ---

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.task_vpc.id

  route {
    #cidr_block = var.public_route_table
    gateway_id = aws_internet_gateway.int_gway.id
  }
}
