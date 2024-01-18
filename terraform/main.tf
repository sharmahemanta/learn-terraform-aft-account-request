module "sandbox-test-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-ct-sandbox-01@sharma.im"
    AccountName               = "sandbox-01-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "aws-ct-sandbox-01@sharma.im"
    SSOUserFirstName          = "Sandbox ZeroOne"
    SSOUserLastName           = "Zero One"
  }

  account_tags = {
    "Learn Tutorial" = "Sandbox-01-AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-01"
}

module "sandbox-test-02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-ct-sandbox-02@sharma.im"
    AccountName               = "sandbox-02-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "aws-ct-sandbox-02@sharma.im"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Zero Two"
  }

  account_tags = {
    "Learn Tutorial" = "Sandbox-01-AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-02"
}


module "sonian" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-ct-sonian-01@sharma.im"
    AccountName               = "sonian01-aft"
    ManagedOrganizationalUnit = "Sonian"
    SSOUserEmail              = "aws-ct-sonian-01@sharma.im"
    SSOUserFirstName          = "Sonian"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "Sonian AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sonian01"
}
