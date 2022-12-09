module "aws" {
  source  = "app.terraform.io/managed-network-customer-a/tfc-pipeline/nordcloud"
  version = "~> 0.0.1"

  tfe_organization      = var.organization_id
  vcs_provider_token_id = var.oauth_token_id

  repository_name        = format("%s-aws", local.repository_name)
  repository_description = "Customer AWS terraform IaC"

  operator_team_id = var.operator_team_id

  template_repository = local.aws-template
  environment         = local.aws-environment
}
