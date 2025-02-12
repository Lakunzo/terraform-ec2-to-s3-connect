provider "aws" {
  region = var.aws_region
  secret_key = var.aws_secretkey
  access_key = var.aws_accesskey
}

#Create an S3 bucket
resource "aws_s3_bucket" "storagebucket" {
  bucket = "quinox-sb345"

  tags = {
    Environment = "Dev"
  }
}

#Grant ownership to s3 bucket
resource "aws_s3_bucket_ownership_controls" "bucketowner" {
  bucket = aws_s3_bucket.storagebucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}