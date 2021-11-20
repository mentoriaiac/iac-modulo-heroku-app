variable "name" {
  description = "(Required) The name of the application. In Heroku, this is also the unique ID, so it must be unique and have a minimum of 3 characters."
  type        = string
}

variable "region" {
  description = "(Required) The region that the app should be deployed in."
  type        = string
  default     = "us"
}
#define config vars heroku app
variable "app_config_vars" {
  description = "(Required) The config vars for the app."
  type        = map
  default     = {}
}

variable "app_config_vars_sensitive" {
  description = "(Required) The config vars for the app, with sensitive values masked."
  type        = map
  default     = {}
}
