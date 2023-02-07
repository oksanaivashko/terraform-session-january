resource "aws_instance" "first_ec2" {     #first label predifined by terraform and second label by author
  ami = var.ami #arguments (key and value)
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.main_sg.id] #security id, if we dont know the security id we use reference to resource(reference to resource)
  tags = {                               #tags {} = expecting a map 
    Name = var.env
  }
}



#Dynamic reference
#list?
#list of strings = ["ert", "zxc", "gwe"]
#list of numbers = [6, 8, 0]

# Data Type
#1. Integer
#2. Float
#3. Number = 0, 1, 2, 
#4. String "characters, whatever you see on your keybord but inside double cotattion"
#5. Boolean = true, false

#Referrence to Resources 
#first_label.second_label.attribute
#first_label and the second label "aws_security_group.main_sg.id"

#Attribute knows after createn 
#whenever you use reference you don't use ""
#"aws_security_group.main_sg.id" = static or hard coder calue (string)
#aws_security_group.main_sg.id = referrence to resource (string, number, booleun)

#Syntax
#the entire syntax expect {} a map which is key and value

#Variable 
#syntax var.instance_name