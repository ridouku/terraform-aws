output "object_references" {
  value = {
    "get_company_function_bucket" : {
      etag : aws_s3_bucket_object.test_function_object.etag,
      key : aws_s3_bucket_object.test_function_object.key,
      bucket : aws_s3_bucket_object.test_function_object.bucket
    }
  }
}