#Create subnets - public 

#Choose VPC 
#Subnet name  
#Availability zone = choose each subnet in the different zone 
#IPv4 CIDR block = 10.0.1.0/24 

#To make these subnets public we need to atach int-gateway


resource "aws_subnet" "public_a" {
    vpc_id = aws_vpc.task.id
  availability_zone = "us-west-2a"
  cidr_block       = "10.0.1.0/24"
}

resource "aws_subnet" "public_b" {
    vpc_id = aws_vpc.task.id
  availability_zone = "us-west-2b"
  cidr_block       = "10.0.2.0/24"
}

resource "aws_subnet" "public_c" {
    vpc_id = aws_vpc.task.id
  availability_zone = "us-west-2c"
  cidr_block       = "10.0.3.0/24"
}

#Create Internet Gateway and attach it to the Public-Route-Table 
# Name tag 
#Create and click to attach to VPC  
#Route table to connect internet you need edit “subnet associate” drop down and add it 

resource "aws_internet_gateway" "int_gway" {
  vpc_id = aws_vpc.task.id

  tags = {
    Name = "int_gway"
  }
}

#Create a route table - public 
#Choose VPC 
#Name for route table
#Attach to the int gateway

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.task.id

  route {
    cidr_block = "10.0.1.0/16"
    gateway_id = aws_internet_gateway.int_gway.id
  }
}
