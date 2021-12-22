# ----------------------------------------------------------------------------------------------------------------------
# CLOUDWATCH GROUPS
# @param name The name of the log group
# @param retention_in_days Specifies the number of days you want to retain log events in the specified log group
# ----------------------------------------------------------------------------------------------------------------------
resource "aws_cloudwatch_log_group" "test_lambda_function" {
  name = "${var.prefix_lambda_cloudwatch_log_group}${var.environment}_${var.lambdas_names.test_lambda_function}"
  retention_in_days = var.retention_days
}