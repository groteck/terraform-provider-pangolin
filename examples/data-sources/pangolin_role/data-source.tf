data "pangolin_role" "admin" {
  org_id = "your-org-id"
  name   = "Admin"
}

output "admin_role_id" {
  value = data.pangolin_role.admin.id
}
