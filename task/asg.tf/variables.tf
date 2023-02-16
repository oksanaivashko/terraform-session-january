variable "env" {
  type        = string
  description = " This is an intance env for EC2 Instance"
  default     = "dev"
}

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