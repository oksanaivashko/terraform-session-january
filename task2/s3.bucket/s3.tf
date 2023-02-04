resource "aws_s3_bucket" "mybucket" {
  bucket = "terraform13-s3-bucket"
}

resource "aws_s3_bucket_accelerate_configuration" "example" {
  bucket = aws_s3_bucket.mybucket.bucket
  status = "Enabled"
}