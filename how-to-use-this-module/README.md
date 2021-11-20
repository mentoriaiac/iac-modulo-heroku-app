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


## Testando o módulo

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

## Usando o módulo em seu repositório de produto

Crie um terrafile com ao menos o seguinte contéudo:

```
module "module_name" {
  source = "github.com/mentoriaiac/iac-modulo-heroku-app.git?ref=v0.1.0"
  name   = "mentoria-iac-testando"
  region = "us"
  app_config_vars = {
    "APP_CONFIG_VAR_1" = "APP_CONFIG_VAR_1_VALUE"
    "APP_CONFIG_VAR_2" = "APP_CONFIG_VAR_2_VALUE"
  }
  app_config_vars_sensitive = {
    "APP_CONFIG_VAR_3" = "APP_CONFIG_VAR_3_VALUE"
    "APP_CONFIG_VAR_4" = "APP_CONFIG_VAR_4_VALUE"
  }
}
```

Os valores definidos acima são apenas exemplos. A versão do módulo que está descrita na linha do **source** mais precisamente depois do **ref=** deve ser colocada de acordo a versão da release que você deseja usar. Para ver a lista de releases acesse esse [link](https://github.com/mentoriaiac/iac-modulo-heroku-app/releases)

É importante salientar que as melhores práticas apontam para o uso de backend remoto e não definir isso no seu repositório de produto, faz com quem o estado seja armazenado no local onde executar o comando terraform, para evitar isso coloque no seu terrafile.tf, ou outro arquivo, as definições de backend.
