resource "aws_s3_bucket" "example4" {
  bucket = "bucketfirstv1"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}
