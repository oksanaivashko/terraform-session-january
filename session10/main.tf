module "ec2" {
  source = "github.com/oksanaivashko/terraform-session-january/modules/ec2"
  env = "dev"
  ami = "ami-06e85d4c3149db26a"
  instance_type = "t2.micro"
}

### URL Stracture
#  github.com = Domain Name (SCM)
#  /oksanaivashko = USER
#  /terraform-session-january = Repository
#  /tree = 
#  /main = branch (default)
#  /modules = subdirectory
#  /ec2 = subdirectory
