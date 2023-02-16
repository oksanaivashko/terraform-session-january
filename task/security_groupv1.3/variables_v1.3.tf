
#input variable

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
variable "protocol" {
  type = string
  description = "Specify protocol type"
  default = "tcp"
}
variable "ports" {
  type = list(string)
  description = "List of ports"
  default = ["22","80","3306","443"]
}
variable "vpc_id" {
  type = string
  description = "Identifiying default vpc id"
  default = "vpc-0a42426aa52e0c8f9"
}
variable "cidr" {
  type = string
  description = "Defines CIDR block for all traffic"
  default = "0.0.0.0/0"
}