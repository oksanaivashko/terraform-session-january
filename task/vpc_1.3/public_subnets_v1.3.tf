#   --- Create Subnets - Public ---

resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = var.availability_zone[0]
  cidr_block        = var.cidr_block[0]
  tags = local.common_tags
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = var.availability_zone[1]
  cidr_block        = var.cidr_block[1]
  tags = local.common_tags
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = var.availability_zone[2]
  cidr_block        = var.cidr_block[2]
  tags = local.common_tags
}


#    --- Create Internet Gateway and attach TO VPC ---

resource "aws_internet_gateway" "int_gway" {
  vpc_id = aws_vpc.task_vpc.id
  tags = local.common_tags
}

#   --- Create a Route Table - Public ---

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.task_vpc.id
  tags = local.common_tags

  route {
    cidr_block = var.cidr_bloc_public_route_table
    gateway_id = aws_internet_gateway.int_gway.id
  }
}
