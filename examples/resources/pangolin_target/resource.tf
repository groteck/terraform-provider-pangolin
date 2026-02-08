resource "pangolin_target" "example" {
  resource_id = pangolin_resource.example.id
  site_id     = 123
  ip          = "10.0.0.1"
  port        = 8080
  enabled     = true
}
