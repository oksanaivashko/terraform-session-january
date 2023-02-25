module "ec2" {
  source = "github.com/oksanaivashko/terraform-session-january/main/modules/ec2"
  env = "dev"
  ami = "ami-06e85d4c3149db26a"
  instance_type = "t2.micro"
}

### URL Structure
#  github.com = Domain Name (SCM)
#  /oksanaivashko = USER
#  /terraform-session-january = Repository
#  /tree = 
#  /main = branch
#  /modules = subdirectory
#  /ec2 = subdirectory
