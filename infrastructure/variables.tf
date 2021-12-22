# ----------------------------------------------------------------------------------------------------------------------
# AWS CREDENTIALS
# ----------------------------------------------------------------------------------------------------------------------

variable "aws_access_key_id" {
  description = "AWS access key credential"
  sensitive = true
}

variable "aws_secret_access_key" {
  description = "AWS secret access key credential"
  sensitive = true
}

variable "region" {
  default = "us-west-2"
}

variable "aws_account_id" {
  description = "AWS account id"
  sensitive = true
}
# ----------------------------------------------------------------------------------------------------------------------
# LAMBDAS NAMES
# ----------------------------------------------------------------------------------------------------------------------

variable "lambdas_names" {
  default = {
    "test_lambda_function": "test_lambda_function"
  }
}

# -------------------------------------------------------------------------------------------------------------------
# LOCAL VARIABLES
# ----------------------------------------------------------------------------------------------------------------------

variable "environment" {
  default = terraform.workspace
}

locals {
  is_production = var.environment == "prod"
}