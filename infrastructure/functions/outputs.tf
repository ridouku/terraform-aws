output "lambdas_invoke_arns" {
  value = {
    "test_lambda_function": aws_lambda_function.test_lambda_function.invoke_arn
  }
}