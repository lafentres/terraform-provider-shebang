// Input variables
variable "TF_VAR_GITHUB_TOKEN" {
  type        = string
  description = "Your GitHub token."
}

variable "github_username" {
  type        = string
  description = "Your GitHub username."
}

variable "tfe_email" {
  type        = string
  description = "Your TFE email. This will be the email associated with your organization."
}

variable "tfe_hostname" {
  type        = string
  description = "The hostname for the TFE instance you are testing against."
}

variable "tfe_username" {
  type        = string
  description = "The username of a TFE user. This must a user that already exists in TFE."
}

// TFE variables
resource "tfe_variable" "pet_name_length1" {
  key          = "pet_name_length1"
  value        = "5"
  category     = "terraform"
  workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "chosen_separator1" {
  key          = "chosen_separator1"
  value        = " ... "
  description  = "stilasdfl testing"
  category     = "terraform"
  workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "separate1" {
  key          = "separate1"
  value        = "value"
  description  = "stiasdfll testing"
  category     = "terraform"
  workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "prefix1" {
  key          = "TF_VAR_prefix1"
  value        = "madam"
  description  = "lasasdft test"
  category     = "env"
  workspace_id = tfe_workspace.noodles_the_dog.id
}