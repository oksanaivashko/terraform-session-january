locals {
  name = "aws-${var.team}-${var.env}-${var.app}-resource-${var.index}"
  common_tags = {
    Name = replace(local.name , "resource","securitygroup")
    Environment = var.env
    Team = var.team
    App = var.app
    Managed_by = var.managed_by
    Owner = var.owner
  }
}


#providers-team-env-app-resource-index = naming standard

# aws-cloud-dev-jerry-loadbalancer-0 

# Common Tags:

# 1. Name = aws-cloud-dev-jerry-loadbalancer-0
# 2. Environment = Dev
# 3. Team = Cloud 
# 4. App  = Jerry
# 5. Managed_By = "Terraform, Cloudformation, Python, Manual"
# 6. Owner = "oksana"