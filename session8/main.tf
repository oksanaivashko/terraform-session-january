resource "aws_instance" "first_ec2" {
  ami           = "ami-0f1a5f5ada0e7da53" 
  instance_type = "t2.micro"
  key_name = aws_key_pair.terraform_server.key_name
  vpc_security_group_ids = [aws_security_group.main.id]

provisioner "file" {
  source = "home/ec2-user/terraform-sesion-january/session8/index.html" #path on terraform servwer
  destination = "tmp/index.html"  #path for the remote server

  connection {
    type = "ssh"
    user = "ec2-user"
    host = self.public_ip
    private_key = file("~/.ssh/id_rsa")
  }
}
}



resource "aws_key_pair" "terraform_server" {
  key_name = "Terraform-Server-Key"
  public_key = file("~/.ssh/id_rsa.pub")
}