locals {
  name = "aws-${var.team}-${var.env}-${var.app}-resource-${var.index}"
  common_tags = {
    Name = replace(local.name , "resource","task_vpc")
    Environment = var.env
    Team = var.team
    App = var.app
    Managed_by = var.managed_by
    Owner = var.owner
  }
}