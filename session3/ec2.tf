resource "aws_instance" "first_ec2" { #first label predifined by terraform and second label by author
  ami           = "ami-06e85d4c3149db26a" #arguments (key and value)
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}
