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

variable "vpc_tags" {
    type = string
    description = "gives tags to my vpc"
    default = "vpc_variables"
}
