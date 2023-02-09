variable "sg_name" {
    type = string
    description = "This is the name of the security group"
    default = "sg_v1"
}
variable "description" {
    type = string
    description = "This security group open 10 ports"
    default = "sg_v1"
}
variable "vpc_id" {
    type = "vpc-0a42426aa52e0c8f9"
    description = "This is vpc id"
    default = "sg_v1"
}
variable "port1" {
  type = list
  description = "Specify ports"
  default = [ 22, 80, 443, 3306]
}
