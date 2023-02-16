resource "aws_db_instance" "main" {
  allocated_storage    = 10
  identifier = replace(local.name, "resource", "rds") #name for rds instance 
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = random_password.db_password.result
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = var.env != "proud" ? true : false    # if env = dev, true
  final_snapshot_identifier = var.env != "proud" ? null : "snapshot_name"  #if env = dev, null

}

resource "random_password" "db_password" {
    lenght = 20
    special = true
    override_special = "%@"
  }