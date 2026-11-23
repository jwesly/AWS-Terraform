# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "english-dictionaries"
resource "aws_s3_bucket_policy" "load_words_bucket_deny_writes" {
  bucket = "english-dictionaries"
  policy = jsonencode({
    Statement = [{
      Action    = ["s3:PutObject", "s3:PutObjectAcl", "s3:PutObjectTagging", "s3:DeleteObject", "s3:DeleteObjectVersion", "s3:DeleteObjectTagging", "s3:RestoreObject", "s3:AbortMultipartUpload"]
      Effect    = "Deny"
      Principal = "*"
      Resource  = "arn:aws:s3:::english-dictionaries/*"
      Sid       = "DenyAllObjectWritesAndDeletes"
    }]
    Version = "2012-10-17"
  })
  region = "us-west-2"
}

# __generated__ by Terraform from "english-dictionaries"
resource "aws_s3_bucket" "load_words_bucket" {
  bucket              = "english-dictionaries"
  bucket_namespace    = "global"
  force_destroy       = false
  object_lock_enabled = false
  region              = "us-west-2"
  tags = {
    etymology = ""
  }
  tags_all = {
    etymology = ""
  }
}
