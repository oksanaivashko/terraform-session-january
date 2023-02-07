variable "instancce_type" {
    type = string
    description = "This is an instance type for ec2 instances"
    default = "t2.micro"
}

variable  "ami" {
    type = string
    description = "AMI for the ec2 instance"
    default = "ami-06e85d4c3149db26a"
}

variable  "dev" {
    type = string
    description = "indiccatas the environment"
    dafault = "dev"
    
}



#Variable 
#we use variable insted hard code