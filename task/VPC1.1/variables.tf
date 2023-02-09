variable "vpc_name" {
    type = string
    description = "name for vpc"
    default = "task_vpc"
}
variable "vpc_cidr_block_a" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.1.0/16"
}
variable "public_subnet_a" {
    type = string
    description = "specify az for subnet"
    default = "us-west-2a"
}
variable "vpc_cidr_block_b" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.2.0/16"
}
variable "cidr_subnet_b" {
    type = string
    description = "specify az for subnet"
    default = "	us-west-2b"
}








##subnets
#task_vpc_subnets = {
# "a" = {
#   cidr = "10.0.1.0/26"
#   az   = "eu-central-1a"
# },
# "b" = {
#   cidr = "10.0.2.0/26"
#   az   = "eu-central-1a"
# },
# "c" = {
#   cidr = "10.0.3.0/26"
#   az   = "eu-central-1b"
# },
# "d" = {
#   cidr = "10.0.4.0/26"
#   az   = "eu-central-1c"
# },
# "e" = {
#   cidr = "10.0.5.0/26"
#   az   = "eu-central-1b"
# }
#}