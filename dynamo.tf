# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_dynamodb_table" "merriam_webster_etymologies" {
  billing_mode                = "PAY_PER_REQUEST"
  deletion_protection_enabled = false
  hash_key                    = "word"
  name                        = "merriam-webster-etymologies"
  range_key                   = null
  read_capacity               = 0
  region                      = "us-west-2"
  restore_backup_arn          = null
  restore_date_time           = null
  restore_source_name         = null
  restore_source_table_arn    = null
  restore_to_latest_time      = null
  stream_enabled              = false
  table_class                 = "STANDARD"
  tags = {
    etymology = ""
  }
  tags_all = {
    etymology = ""
  }
  write_capacity = 0
  attribute {
    name = "word"
    type = "S"
  }
  point_in_time_recovery {
    enabled                 = false
  }
  ttl {
    attribute_name = null
    enabled        = false
  }
}

# __generated__ by Terraform
resource "aws_dynamodb_table" "english_words" {
  billing_mode                = "PAY_PER_REQUEST"
  deletion_protection_enabled = false
  hash_key                    = "word"
  name                        = "english-words"
  range_key                   = null
  read_capacity               = 0
  region                      = "us-west-2"
  restore_backup_arn          = null
  restore_date_time           = null
  restore_source_name         = null
  restore_source_table_arn    = null
  restore_to_latest_time      = null
  stream_enabled              = false
  table_class                 = "STANDARD"
  tags = {
    etymology = ""
  }
  tags_all = {
    etymology = ""
  }
  write_capacity = 0
  attribute {
    name = "word"
    type = "S"
  }
  point_in_time_recovery {
    enabled                 = false
  }
  ttl {
    attribute_name = null
    enabled        = false
  }
}
