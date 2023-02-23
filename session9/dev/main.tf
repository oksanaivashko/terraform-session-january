# Terraform consist of child and root module 
# 1. Child module = declare the resource
# 2. Root module where you run terraform command.
# 
# Root mosule = call the child module 
# Local  module = moved is in your filesystem

module "ec2_instance" {
  source = "../../modules/ec2" # where terraform child is sitting


########################## Varialbes ###########################

  env = "dev"
  ami = "ami-0f1a5f5ada0e7da53"
  instance_type = "t2.micro"
  sg = [module.ec2_sg.id]

module "ec2_sg" {
  source = "../../modules/sg"
  env = "dev"

}