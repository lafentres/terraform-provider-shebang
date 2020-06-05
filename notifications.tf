resource "tfe_notification_configuration" "generic" {
  name                  = "generic-integration"
  enabled               = true
  destination_type      = "generic"
  triggers              = ["run:created", "run:planning", "run:needs_attention", "run:applying", "run:completed", "run:errored"]
  url                   = "https://example.com"
  workspace_external_id = tfe_workspace.noodles_the_dog.external_id
}