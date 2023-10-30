terraform {
  required_version = "~> 1.6"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.25.0, < 1.0.0"
    }
  }
}

module "organizations" {
  for_each = var.organizations
  source   = "app.terraform.io/ddortch-root-org/organization/tfe"

  name  = each.key
  email = each.value.email
}
