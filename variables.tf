variable "name" {
  description = "(Required) The name of the application. In Heroku, this is also the unique ID, so it must be unique and have a minimum of 3 characters."
  type        = string
}

variable "region" {
  description = "(Required) The region that the app should be deployed in."
  type        = string
  default     = "us"
}
