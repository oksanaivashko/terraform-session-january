locals {
  name = "aws-${var.team}-${var.env}-${var.app}-resource-${var.index}"
  common_tags = {
    Environment = var.env
    Team        = var.app
    App         = var.app
    manage_by   = var.manage_by
    Owner       = var.owner
  }
}