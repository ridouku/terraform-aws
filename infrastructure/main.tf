terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "test-project"
    key = "terraform.tfstate"
    region = "us-east-1"
    workspace_key_prefix = "env:"
  }
}