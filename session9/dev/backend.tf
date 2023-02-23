terraform {
  backend "s3" {
    bucket         = "terraform-session-september-backend-oksana"
    region         = "us-west-2"
    key            = "session-9/dev/backend/terrafrom.rfstate"
    dynamodb_table = "terraform-session-sep-state-lock"
  }
}