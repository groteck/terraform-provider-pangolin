resource "pangolin_resource" "example" {
  org_id    = "your-org-id"
  name      = "Example App Resource"
  protocol  = "tcp"
  http      = true
  subdomain = "example-app"
  domain_id = "your-domain-id"
}
