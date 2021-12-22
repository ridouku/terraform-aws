output "lambdas_exec_roles_arn" {
  value = {
      "test_exec_role_arn": aws_iam_role.test_lambda_exec_role.arn
  }
}

