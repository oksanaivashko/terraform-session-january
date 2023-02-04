terraform {
  required_version = "~> 1.3.0"# Terraform version 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.53.0" # AWS Provider version
    }
  }
}

# Terraform = v1.3.7
# AWS Provider = v4.53.0

# Semantic Versioning 
# v1.3.7
# 1 = Major
# 3 = Minor
# 7 = Patch 
# ">= 0.13, < 0.14" every patch version included
# ~> 0.13 = 0.13.0 - 0.13.x
# ~> = lazy constraints 
