resource "heroku_app" "app" {
  name   = var.name
  region = var.region
  
  organization {
    name = var.organization.name
    locked = var.organization.locked
    personal = var.organization.personal
  }

}

resource "heroku_config" "config_vars" {
    vars = var.app_config_vars

    sensitive_vars = var.app_config_vars_sensitive
}
 
resource "heroku_app_config_association" "foobar" {
  app_id = heroku_app.app.id

  vars = heroku_config.config_vars.vars
  sensitive_vars = heroku_config.config_vars.sensitive_vars
}
