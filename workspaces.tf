resource "tfe_workspace" "noodles_the_dog" {
  name         = "noodles-the-dog"
  organization = tfe_organization.tfe_provider_test.name
  vcs_repo {
    identifier     = "${var.github_username}/terraform-random-monorepo"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id
  }
  working_directory = "/workspace1"
}

resource "tfe_workspace" "higgins_the_cat" {
  name         = "higgins-the-cat"
  organization = tfe_organization.tfe_provider_test.name
  vcs_repo {
    identifier     = "${var.github_username}/terraform-random-monorepo"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id
    branch         = "test"
  }
  auto_apply        = true
  working_directory = "/workspace2"
}