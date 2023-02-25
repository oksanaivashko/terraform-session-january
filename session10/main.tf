# --- Calling a child module remotely ---

module "ec2" {
  source = "github.com/oksanaivashko/terraform-session-january//modules/ec2?ref=v1.0.0"
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
#  it is always good to give // before the subdirectory starts


#  ?ref=v1.0.0   (release version)