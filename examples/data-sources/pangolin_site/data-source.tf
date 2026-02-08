data "pangolin_site" "main" {
  org_id = "your-org-id"
  name   = "Main Site"
}

output "site_id" {
  value = data.pangolin_site.main.id
}
