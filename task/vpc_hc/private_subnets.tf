#Create subnets - private 

#Choose VPC 
#Subnet name  
#Availability zone = choose or no preference  
#IPv4 CIDR block = 10.0.11.0/24 = always has a 256 Ips 
#Attach to NAT gateway

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = "us-west-2a"
  cidr_block        = "10.0.10.0/24"
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = "us-west-2b"
  cidr_block        = "10.0.11.0/24"
}

resource "aws_subnet" "private_c" {
  vpc_id            = aws_vpc.task_vpc.id
  availability_zone = "us-west-2c"
  cidr_block        = "10.0.12.0/24"
}

#Create NAT gateway  
#
#Name tag 
#Select a subnet in which to create the NAT gateway = only from public subnet 
#Connectivity type = public 
#Elastic IP allocation ID = allocate 
#To connect subnets to route table you need go route table > edit subnets > add private subnets only 

resource "aws_nat_gateway" "nat_gway" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.public_a.id
}

#Create a route table - private 
#
#Name for route table 
#Choose VPC 

resource "aws_route_table" "tasktest_private_route_table" {
  vpc_id = aws_vpc.task_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gway.id
  }
}
