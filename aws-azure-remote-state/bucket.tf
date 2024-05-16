resource "aws_s3_bucket" "aws_bucket" {
  bucket = "mateusamaralremotestate"
}



resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.aws_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}