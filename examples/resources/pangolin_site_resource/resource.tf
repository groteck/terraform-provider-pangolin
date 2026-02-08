resource "pangolin_site_resource" "example" {
  org_id      = "your-org-id"
  site_id     = 123
  name        = "Example Site Resource"
  mode        = "host"
  destination = "example.internal"
  alias       = "example.your-domain.com"
  enabled     = true
  user_ids    = []
  role_ids    = []
  client_ids  = []
}
