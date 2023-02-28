terraform {
  backend "s3" {
    bucket         = "terraform-session-september-backend-oksana"
    region         = "us-west-2"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-session-sep-state-lock"
    workspace_key_prefix = "session11"
  }
}

# Curently: default
# Backend file path: session11/terraform.tfstate

# Switch: dev
# Backend file path session11/dev/terraform.tfstate

# when you use terraform workspace it creates a terraform.tfsate in a following path

# workspace_key_prefix/workspace_name/key