# variables for lc

variable "task-launch-config" {
  type        = string
  description = " This is name for launch configuraton"
  default     = "dev"
}

variable "instance_type" {
  type        = string
  description = " This is an intance type for lc"
  default     = "t2.micro"
}

# --- variables for vpc --- 

variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "inst_tenancy" {
  type = string
  default = "default"
}

# --- local common tags ---

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

# --- variables for security group for lc_sg ---



# --- Variables for AutoScaling Group ---

variable "max_size" {
  type        = number
  description = "this is the max number of instances"
  default     = 3
}

variable "min_size" {
  type        = number
  description = "this is the minimum number of instances"
  default     = 1
}

variable "desired_capacity" {
  type        = number
  description = "this is the desired capacity"
  default     = 1
}

variable "force_delete" {
  type        = bool
  description = "This is the force to delete ec2 instance"
  default     = true
}

variable "vpc_zone_identifier" {
  type        = list(string) 
  description = "This is the list of the subnets where to create the ec2 instances"
  default     = ["   subnet-0493d77dbb8da329e", "	subnet-0227e79e2b0117cc4"]
}