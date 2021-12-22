# ----------------------------------------------------------------------------------------------------------------------
# CREATE THE LAMBDA FUNCTION
# @param role Amazon Resource Name (ARN) of the function's execution role
# @param handler Function entrypoint
# @param runtime Identifier of the function's runtime
# @param s3_bucket Bucket reference to get code
# @param s3_key Source code name in s3 bucket
# @param function_name Function name
# @param source_code_hash Used to trigger updates
# @param depends_on Set of dependencies to execute the definition
# ----------------------------------------------------------------------------------------------------------------------

resource "aws_lambda_function" "test_lambda_function" {
  role             = var.lambdas_exec_roles_arn.test_exec_role_arn
  handler          = "test_handler.handler"
  runtime          = var.runtime
  s3_bucket        = var.object_bucket_references.test_function.bucket
  s3_key           = var.object_bucket_references.test_function.key
  function_name    = "${var.environment}_${var.lambdas_names.test_lambda_function}"
  source_code_hash = base64sha256(var.object_bucket_references.test_function.etag)

}
