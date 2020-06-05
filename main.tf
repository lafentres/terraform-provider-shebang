provider "tfe" {
  hostname = var.tfe_hostname
}

resource "tfe_organization" "tfe_provider_test" {
  name  = "tst-tfe-provider-test"
  email = var.tfe_email
}

resource "tfe_oauth_client" "github" {
  organization     = tfe_organization.tfe_provider_test.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.TF_VAR_GITHUB_TOKEN
  service_provider = "github"
}
