## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_heroku"></a> [heroku](#requirement\_heroku) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_heroku"></a> [heroku](#provider\_heroku) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [heroku_app.app](https://registry.terraform.io/providers/heroku/heroku/latest/docs/resources/app) | resource |
| [heroku_app_config_association.foobar](https://registry.terraform.io/providers/heroku/heroku/latest/docs/resources/app_config_association) | resource |
| [heroku_config.config_vars](https://registry.terraform.io/providers/heroku/heroku/latest/docs/resources/config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_config_vars"></a> [app\_config\_vars](#input\_app\_config\_vars) | The config vars for the app. | `map` | `{}` | no |
| <a name="input_app_config_vars_sensitive"></a> [app\_config\_vars\_sensitive](#input\_app\_config\_vars\_sensitive) | The config vars for the app, with sensitive values masked. | `map` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the application. In Heroku, this is also the unique ID, so it must be unique and have a minimum of 3 characters. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region that the app should be deployed in. | `string` | `"us"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_heroku_app_id"></a> [heroku\_app\_id](#output\_heroku\_app\_id) | n/a |
| <a name="output_heroku_app_name"></a> [heroku\_app\_name](#output\_heroku\_app\_name) | n/a |


## Como usar este módulo:

Para saber mais como usar este modulo [acesse este documento](how-to-use-this-module/README.md)
