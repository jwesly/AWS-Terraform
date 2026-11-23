# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "https://sqs.us-west-2.amazonaws.com/994969863268/FetchEtymologyQueue"
resource "aws_sqs_queue" "word_processing_queue" {
  content_based_deduplication       = false
  delay_seconds                     = 0
  fifo_queue                        = false
  kms_data_key_reuse_period_seconds = 300
  kms_master_key_id                 = null
  max_message_size                  = 1048576
  message_retention_seconds         = 345600
  name                              = "FetchEtymologyQueue"
  policy = jsonencode({
    Id = "__default_policy_ID"
    Statement = [{
      Action = "SQS:*"
      Effect = "Allow"
      Principal = {
        AWS = "arn:aws:iam::994969863268:root"
      }
      Resource = "arn:aws:sqs:us-west-2:994969863268:FetchEtymologyQueue"
      Sid      = "__owner_statement"
    }]
    Version = "2012-10-17"
  })
  receive_wait_time_seconds = 0
  region                    = "us-west-2"
  sqs_managed_sse_enabled   = true
  tags = {
    etymanalyze = ""
    etymology   = ""
  }
  tags_all = {
    etymanalyze = ""
    etymology   = ""
  }
  visibility_timeout_seconds = 30
}
