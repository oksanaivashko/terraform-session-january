variable "vpc_name" {
    type = string
    description = "vpc name"
    default = "home_task"
}
variable "cidr_block" {
    type = string
    description = "specify cidr block"
    default = ["10.0.0.0/16"]
}
variable "vpc_tags" {
    type = string
    description = "gives tags to my vpc"
    default = "vpc_variables"
}
