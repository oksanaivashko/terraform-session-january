module "ec2" {
  source = "github.com/oksanaivashko/terraform-session-january/tree/main/modules/ec2"
  env = "dev"
  ami = "ami-06e85d4c3149db26a"
  instance_type = "t2.micro"
}