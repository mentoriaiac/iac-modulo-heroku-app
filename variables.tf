variable "name" {
  description = "O nome da aplicação. No heroku isso precisa ser um ID único para toda internet e ao menos 3 caracteres."
  type        = string
}

variable "region" {
  description = "A região que a aplicação será criada."
  type        = string
  default     = "us"
}
#define config vars heroku app
variable "app_config_vars" {
  description = "O map com as variáveis que devem ser criadas na aplicação."
  type        = map
  default     = {}
}

variable "app_config_vars_sensitive" {
  description = "O map com as variáveis que devem ser criadas na aplicação, mas com os valores mascarados para evitar que as pessoas vejam facilmente."
  type        = map
  default     = {}
}

variable "organization" { 
  description = "Definição de qual organização será usada"
  type = map
  default = { 
    name = "personal"
    locked = false
    personal = true
  }
}
