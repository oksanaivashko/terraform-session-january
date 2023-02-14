terraform {
 backend "s3" {
    bucket = "terraform-session-september-backend-oksana"
    region = "us-west-2"
    key    = "session-6/filestructure/_env/terrafrom.rfstate"  #where does terraform need to store your file.Path or
    dynamodb_table = "terraform-session-sep-state-lock"
  }
}


# 1.  You cannot use any variables in key

