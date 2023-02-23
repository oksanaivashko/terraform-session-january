variable "env" {
  type = string
  default = "dev"
  description = "This variables for envoronment"
}
variable "ami" {
  type = string
  default = ""
  description = "ami for ec2 instance"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Instance size"
}