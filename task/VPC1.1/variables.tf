variable "vpc_name" {
    type = string
    description = "name for vpc"
    default = "task_vpc"
}
variable "vpc_cidr_block" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.0.0/16"
}
#public subnets
variable "public_subnet_a" {
    type = string
    description = "specify az for subnet"
    default = "us-west-2a"
}
variable "public_subnet_cidr_block" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.1.0/24"
}

variable "public_subnet_b" {
    type = string
    description = "specify az for subnet"
    default = "us-west-2b"
}
variable "public_subnet_cidr_block_b" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.2.0/24"
}
variable "public_subnet_c" {
    type = string
    description = "specify az for subnet"
    default = "us-west-2c"
}
variable "public_subnet_cidr_block_c" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.3.0/24"
}
#Create Internet Gateway and attach it to the Public-Route-Table

variable "int_gway" {
  type = string
  description = "create a intgateay"
  default = "task_vpc"
}
#Create a route table - public 

variable "public_route_table" {
  description = "create a route table"
  default = "task_vpc"
}
variable "public_route_table_cidr" {
  description = "definied  rcidr block for route table"
  default = "0.0.0.0/0"
}

#Create subnets - private 

variable "private_subnet_a" {
    type = string
    description = "specify az for private subnet"
    default = "us-west-2a"
}
variable "private_subnet_cidr_block_a" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.10.0/24"
}
