resource "heroku_app" "app" {
  name   = var.name
  region = var.region
}
