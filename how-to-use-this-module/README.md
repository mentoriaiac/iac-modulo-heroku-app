# iac-github
Repositório IaC para criação de um app no Heroku

## Dependências

Para realizar os teste localmente é necessário:

```
terraform >= 1.0.0
HEROKU_EMAIL=seu@email.com
HEROKU_API_KEY=00000000-000000000-000000000
```

[Documentação Heroku](https://devcenter.heroku.com/articles/authentication)


## Utilizando o módulo

### Primeiro Passo:

Inicialize o Terraform
```
cd ./how-to-use-this-module

terraform init
```

### Segundo Passo:

Personalize o `terrafile.tf` na pasta how-to-use-this-module :
```
  name   = "mentoria-iac"
  region = "us"
  app_config_vars = {
    "APP_CONFIG_VAR_1" = "APP_CONFIG_VAR_1_VALUE"
    "APP_CONFIG_VAR_2" = "APP_CONFIG_VAR_2_VALUE"
  }
  app_config_vars_sensitive = {
    "APP_CONFIG_VAR_3" = "APP_CONFIG_VAR_3_VALUE"
    "APP_CONFIG_VAR_4" = "APP_CONFIG_VAR_4_VALUE"
  } 
```

Tente criar o primeiro plan:
```
terraform plan
```

### Terceiro Passo:

Aplique suas mudanças:
```
terraform apply
```
