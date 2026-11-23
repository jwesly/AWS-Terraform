# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_lambda_function" "serve_etymologies_lambda" {
  architectures                      = ["x86_64"]
  code_sha256                        = "lkTVywTH5XJiP0R0pavejqxMoUhS7SrTN+KJ3iOAmkA="
  code_signing_config_arn            = null
  description                        = null
  filename = "placeholder.zip"

  lifecycle {
    ignore_changes = [
      filename,
      source_code_hash,
    ]
  }
  function_name                      = "ServeEtymologiesLambda"
  handler                            = "lambda_function.lambda_handler"
  image_uri                          = null
  kms_key_arn                        = null
  layers                             = []
  memory_size                        = 128
  package_type                       = "Zip"
  publish                            = null
  publish_to                         = null
  region                             = "us-west-2"
  replace_security_groups_on_destroy = null
  replacement_security_group_ids     = null
  reserved_concurrent_executions     = -1
  role                               = "arn:aws:iam::994969863268:role/service-role/ServeEtymologiesLambda-role-2o34ldok"
  runtime                            = "python3.15"
  s3_bucket                          = null
  s3_key                             = null
  s3_object_version                  = null
  skip_destroy                       = false
  source_kms_key_arn                 = null
  tags = {
    etymanalyze = ""
    etymology   = ""
  }
  tags_all = {
    etymanalyze = ""
    etymology   = ""
  }
  timeout                              = 3
  use_resource_timeout_for_propagation = null
  ephemeral_storage {
    size = 512
  }
  logging_config {
    application_log_level = null
    log_format            = "Text"
    log_group             = "/aws/lambda/ServeEtymologiesLambda"
    system_log_level      = null
  }
  tracing_config {
    mode = "PassThrough"
  }
}

# __generated__ by Terraform
resource "aws_lambda_function" "load_dictionary_lambda" {
  architectures                      = ["x86_64"]
  code_sha256                        = "XQttc2X6m3fpQybOBPCa1DfOLM1+n4bYme2HoW53C2s="
  code_signing_config_arn            = null
  description                        = null
  filename = "placeholder.zip"

  lifecycle {
    ignore_changes = [
      filename,
      source_code_hash,
    ]
  }
  function_name                      = "LoadDictionaryFromS3"
  handler                            = "lambda_function.lambda_handler"
  image_uri                          = null
  kms_key_arn                        = null
  layers                             = []
  memory_size                        = 128
  package_type                       = "Zip"
  publish                            = null
  publish_to                         = null
  region                             = "us-west-2"
  replace_security_groups_on_destroy = null
  replacement_security_group_ids     = null
  reserved_concurrent_executions     = -1
  role                               = "arn:aws:iam::994969863268:role/service-role/LoadDictionaryFromS3-role-57glyqiy"
  runtime                            = "python3.14"
  
  s3_bucket                          = null
  s3_key                             = null
  s3_object_version                  = null
  skip_destroy                       = false
  source_kms_key_arn                 = null
  tags = {
    etymology = ""
  }
  tags_all = {
    etymology = ""
  }
  timeout                              = 900
  use_resource_timeout_for_propagation = null
  ephemeral_storage {
    size = 512
  }
  logging_config {
    application_log_level = null
    log_format            = "Text"
    log_group             = "/aws/lambda/LoadDictionaryFromS3"
    system_log_level      = null
  }
  tracing_config {
    mode = "PassThrough"
  }
}

# __generated__ by Terraform
resource "aws_lambda_function" "fetch_etymology_lambda" {
  architectures                      = ["x86_64"]
  code_sha256                        = "jF5cD4JzKg97gA/SxkQMkAXVGR4p5tUDLfzzrH4lNYM="
  code_signing_config_arn            = null
  description                        = null
  filename = "placeholder.zip"

  lifecycle {
    ignore_changes = [
      filename,
      source_code_hash,
    ]
  }
  function_name                      = "FetchEtymologyLambda"
  handler                            = "lambda_function.lambda_handler"
  image_uri                          = null
  kms_key_arn                        = null
  layers                             = []
  memory_size                        = 128
  package_type                       = "Zip"
  publish                            = null
  publish_to                         = null
  region                             = "us-west-2"
  replace_security_groups_on_destroy = null
  replacement_security_group_ids     = null
  reserved_concurrent_executions     = -1
  role                               = "arn:aws:iam::994969863268:role/FetchEtymologyLambdaRole"
  runtime                            = "python3.14"

  s3_bucket                          = null
  s3_key                             = null
  s3_object_version                  = null
  skip_destroy                       = false
  source_kms_key_arn                 = null
  tags = {
    etymanalyze = ""
  }
  tags_all = {
    etymanalyze = ""
  }
  timeout                              = 3
  use_resource_timeout_for_propagation = null
  environment {
    variables = {
      merriam_webster_api_key = "7930f218-e253-4fd3-bd82-26c2966ce2b4"
    }
  }
  ephemeral_storage {
    size = 512
  }
  logging_config {
    application_log_level = null
    log_format            = "Text"
    log_group             = "/aws/lambda/FetchEtymologyLambda"
    system_log_level      = null
  }
  tracing_config {
    mode = "PassThrough"
  }
}
