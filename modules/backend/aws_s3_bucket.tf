resource "aws_s3_bucket" "bucket_backup" {
  bucket = var.s3Name
}

resource "aws_s3_bucket_acl" "bucket_backup" {
  bucket = aws_s3_bucket.bucket_backup.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.bucket_backup.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.bucket_backup.id

  rule {
    id = "expiration"

    expiration {
      days = 7
    }

    status = "Enabled"
  }
}
