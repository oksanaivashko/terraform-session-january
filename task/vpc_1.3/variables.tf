variable "env" {
  type = string
  default = "dev"
}
variable "team" {
  type = string
  default = "akumo"
}
variable "app" {
  type = string
  default = "homework-task"
}
variable "index" {
  type = string
  default = "0"
}
variable "managed_by" {
  type = string
  default = "Terraform"
}
variable "owner" {
  type = string
  default = "oksana"
}

variable "vpc_name" {
  type = string
  default = "task_vpc"
}

variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "inst_tenancy" {
  type = string
  default = "default"
}
variable "availability_zone" {
  type = list(string)
  description = "Defines az for each subnet"
  default = [ "us-west-2a", "us-west-2b", "us-west-2c" ]
}

variable "cidr_block" {
    type = list(string)
    description = "Defines cidr block for each subnet"
    default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24" ]
}

variable "subnet_name" {
    type = list(string)
    description = "Gives name for each subnet"
    default = [ "public_subnet_a", "public_subnet_b", "public_subnet_c", "private_subnet_a", "private_subnet_b", "private_subnet_c" ]
  
}

variable "cidr_blocks" {
  type = string
  description = "defines CIDR block for all traffic"
  default = "0.0.0.0/0"
}

variable "cidr_bloc_public_route_table" {
  type = string
  description = "Defines cidr block for public route table"
  default = "0.0.0.0/0"
}

variable "cidr_block_private_route_table" {
  type = string
  description = "Defines cidr block for private route table"
  default = "0.0.0.0/0"
}

#   --- Create Internet Gateway --- 

variable "int_gway" {
  type        = string
  description = "create a intgateay"
  default     = "task_vpc"
}

#--- Create a NatGateway ---

variable "nat_gway" {
  type        = string
  description = "create a natgateay"
  default     = "task_vpc"
}


#   --- Allocate Elastic IP Address ---

variable "nat_eip" {
  type        = string
  description = "ellocate an Elastic IP address to the NAT gateway."
  default     = "nat_gway"
}
