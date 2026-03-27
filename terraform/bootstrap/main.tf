resource "aws_s3_bucket" "state_files" {
  bucket = var.state_bucket_name
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.state_files.id
  versioning_configuration {
    status = "Enabled"
  }
}
