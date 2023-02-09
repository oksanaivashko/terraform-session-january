variable "vpc_id" {
  type = string
  description = "to give vpc id"
  default = "vpc-0a42426aa52e0c8f9"
}
variable "vpc_name" {
    type = string
    description = "vpc name"
    default = "home_task"
}
variable "vpc_cidr_block" {
  type = string
  description = "specify CIDR block for VPC"
  default = "10.0.0.0/16"
}
