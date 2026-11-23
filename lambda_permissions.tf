# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ServeEtymologiesLambda-role-2o34ldok/arn:aws:iam::994969863268:policy/service-role/AWSLambdaBasicExecutionRole-78d944e4-3318-4a6d-84d5-dd4048d8ce57"
resource "aws_iam_role_policy_attachment" "serve_etymologies_lambda" {
  policy_arn = "arn:aws:iam::994969863268:policy/service-role/AWSLambdaBasicExecutionRole-78d944e4-3318-4a6d-84d5-dd4048d8ce57"
  role       = "ServeEtymologiesLambda-role-2o34ldok"
}

# __generated__ by Terraform from "FetchEtymologyLambdaRole/arn:aws:iam::994969863268:policy/FetchEtymologyLambdaRolePolicy"
resource "aws_iam_role_policy_attachment" "fetch_etymology_custom" {
  policy_arn = "arn:aws:iam::994969863268:policy/FetchEtymologyLambdaRolePolicy"
  role       = "FetchEtymologyLambdaRole"
}

# __generated__ by Terraform from "FetchEtymologyLambdaRole/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
resource "aws_iam_role_policy_attachment" "fetch_etymology_basic" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "FetchEtymologyLambdaRole"
}

# __generated__ by Terraform from "LoadDictionaryFromS3-role-57glyqiy/arn:aws:iam::994969863268:policy/service-role/AWSLambdaBasicExecutionRole-1b0eb66f-10cb-41a3-b261-d0de18e09413"
resource "aws_iam_role_policy_attachment" "load_dictionary_lambda" {
  policy_arn = "arn:aws:iam::994969863268:policy/service-role/AWSLambdaBasicExecutionRole-1b0eb66f-10cb-41a3-b261-d0de18e09413"
  role       = "LoadDictionaryFromS3-role-57glyqiy"
}
