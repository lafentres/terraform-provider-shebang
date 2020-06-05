resource "tfe_team" "pasta" {
  name         = "spaghetti"
  organization = tfe_organization.tfe_provider_test.name
}

resource "tfe_team" "sushi" {
  name         = "nigiri"
  organization = tfe_organization.tfe_provider_test.name
}

resource "tfe_team_access" "noodles" {
  access       = "admin"
  team_id      = tfe_team.sushi.id
  workspace_id = tfe_workspace.higgins_the_cat.id
}

resource "tfe_team_member" "team_member" {
  team_id  = tfe_team.sushi.id
  username = var.tfe_username
}

resource "tfe_team_members" "pasta" {
  team_id   = tfe_team.pasta.id
  usernames = [tfe_team_member.team_member.username]
}
