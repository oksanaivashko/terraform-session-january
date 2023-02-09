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
    type = string
    description = "This is vpc id"
    default = "vpc-0a42426aa52e0c8f9"
}

variable "value.cidr" {
  type = string
  description = "CIDR Block"
  default = "0.0.0.0/0"
}

variable "ssh_port" {
  description = "ingress type"
  type        = string
}