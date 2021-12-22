output "object_references" {
  value = {
    "test_function" : {
      etag : aws_s3_bucket_object.test_function_object.etag,
      key : aws_s3_bucket_object.test_function_object.key,
      bucket : aws_s3_bucket_object.test_function_object.bucket
    }
  }
}