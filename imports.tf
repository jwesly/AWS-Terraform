import {
  to = aws_dynamodb_table.english_words
  id = "english-words"
}

import {
  to = aws_dynamodb_table.merriam_webster_etymologies
  id = "merriam-webster-etymologies"
}

import {
  to = aws_s3_bucket_policy.load_words_bucket_deny_writes
  id = "english-dictionaries"
}

import {
    to = aws_s3_bucket.load_words_bucket
    id = "english-dictionaries"
}

import {
  to = aws_sqs_queue.word_processing_queue
  id = "https://sqs.us-west-2.amazonaws.com/994969863268/FetchEtymologyQueue"
}


import {
  to = aws_lambda_function.serve_etymologies_lambda
  id = "ServeEtymologiesLambda"
}

import {
  to = aws_iam_role_policy_attachment.serve_etymologies_lambda
  id = "ServeEtymologiesLambda-role-2o34ldok/arn:aws:iam::994969863268:policy/service-role/AWSLambdaBasicExecutionRole-78d944e4-3318-4a6d-84d5-dd4048d8ce57"
}

import {
  to = aws_lambda_function.fetch_etymology_lambda
  id = "FetchEtymologyLambda"
}

import {
  to = aws_iam_role_policy_attachment.fetch_etymology_custom
  id = "FetchEtymologyLambdaRole/arn:aws:iam::994969863268:policy/FetchEtymologyLambdaRolePolicy"
}

import {
  to = aws_iam_role_policy_attachment.fetch_etymology_basic
  id = "FetchEtymologyLambdaRole/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

import {
  to = aws_lambda_function.load_dictionary_lambda
  id = "LoadDictionaryFromS3"
}

import {
  to = aws_iam_role_policy_attachment.load_dictionary_lambda
  id = "LoadDictionaryFromS3-role-57glyqiy/arn:aws:iam::994969863268:policy/service-role/AWSLambdaBasicExecutionRole-1b0eb66f-10cb-41a3-b261-d0de18e09413"
}
