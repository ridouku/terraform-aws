module "buckets" {
  source = "./buckets/"
  environment = local.environment
}

module "policy" {
  source = "./policy"
  environment = local.environment
}

module "functions" {
  source = "./functions/"
  object_bucket_references = module.buckets.object_references
  lambdas_names = var.lambdas_names
  environment = local.environment
  lambdas_exec_roles_arn = module.policy.lambdas_exec_roles_arn
}


module "logs" {
  source = "./logs/"
  lambdas_names = var.lambdas_names
  environment = local.environment
}
