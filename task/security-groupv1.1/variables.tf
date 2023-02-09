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
variable "protocol" {
  type = string
  description = "This tcp protocol for ssh"
  default ="tcp"
}

variable "cidr" {
  type = string
  description = "CIDR Block"
  default = "0.0.0.0/0"
}

variable "port1" {
  type = string
  description = "specify port number"
  default = "22"
}
variable "port2" {
  type = string
  description = "specify port number"
  default = "80"
}
variable "port3" {
  type = string
  description = "specify port number"
  default = "433"
}
variable "port4" {
  type = string
  description = "specify port number"
  default = "21"
}
variable "port5" {
  type = string
  description = "specify port number"
  default = "23"
}
variable "port6" {
  type = string
  description = "specify port number"
  default = "24"
}
variable "port7" {
  type = string
  description = "specify port number"
  default = "25"
}
variable "port8" {
  type = string
  description = "specify port number"
  default = "26"
}
variable "port9" {
  type = string
  description = "specify port number"
  default = "27"
}
variable "port10" {
  type = string
  description = "specify port number"
  default = "28"
}