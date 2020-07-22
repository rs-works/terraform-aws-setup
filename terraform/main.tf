module "config" {
  source      = "./modules/config"
  prefix      = var.prefix
  environment = var.environment
}

module "securityhub" {
  source = "./modules/securityhub"
}

module "guardduty" {
  source = "./modules/guardduty"
}

module "cloudtrail" {
  source         = "./modules/cloudtrail"
  aws_account_id = data.aws_caller_identity.current.account_id
  prefix         = var.prefix
  environment    = var.environment
}

module "resourcegroup" {
  source      = "./modules/resourcegroup"
  prefix      = var.prefix
  environment = var.environment
}
