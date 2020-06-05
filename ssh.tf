resource "tfe_ssh_key" "test" {
  name         = "my-ssh-key"
  organization = tfe_organization.tfe_provider_test.name
  key          = "private key that i'm not actually going to post here"
}