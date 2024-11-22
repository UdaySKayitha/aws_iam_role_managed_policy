region = "us-east-1"
role_name  = "sPoocApplicationRole"

spooc_get_details_polict_arns = {
  dynamo_db_full_access      = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess",
  ec2_full_access            = "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
  sqs_full_access            = "arn:aws:iam::aws:policy/AmazonSQSFullAccess",
  lambda_basic               = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
  step_functions_full_access = "arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess",
  secrets_manager            = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
}

