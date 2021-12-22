# ----------------------------------------------------------------------------------------------------------------------
# S3 BUCKET TO STORE Lambdas
# @param bucket Bucket name
# @param acl The canned ACL to apply
# ----------------------------------------------------------------------------------------------------------------------
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.environment}-${var.bucket_name}"
  acl = "private-read"
}

# ----------------------------------------------------------------------------------------------------------------------
# UPLOAD THE ZIP CODE TO S3
# @param bucket Bucket to upload code
# @param key Object name
# @param source Local directory to get zip code
# @param etag Triggers updates when the value changes
# ----------------------------------------------------------------------------------------------------------------------

resource "aws_s3_bucket_object" "test_function_object" {
  bucket = aws_s3_bucket.bucket.bucket
  key = "${var.lambda_resource_name}/${var.environment}/test.zip"
  source = "${path.module}/../../dist/test.zip"
  etag = filemd5("${path.module}/../../dist/test.zip")
  depends_on = [aws_s3_bucket.bucket]
}
