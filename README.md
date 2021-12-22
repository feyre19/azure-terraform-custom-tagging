<!-- BEGIN_TF_DOCS -->
# terraform-custom-tagging
## Requirements

No requirements.

## Providers

No providers.

## Usage
### Add tags for the resources.
```hcl

module "tlz-tagging" {
  source                   = "git::https://github.com/feyre19/terraform-custom-tagging"
  environment              = var.environment
  monitoring               = var.monitoring
  patching                 = var.patching
  project-name             = var.project-name
  subscription-type        = var.subscription-type
  back-up                  = var.back-up
}

```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| <a name="input_subscription-type"></a> [subscription-type](#input\_subscription-type) | ex: application, poc, sbx, core | `string` | n/a | yes |
| <a name="input_back-up"></a> [back-up](#input\_back-up) | ex: Daily, Monthly, etc | `string` | n/a | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Type of the environment eg. staging, test or dev | `string` | n/a | yes |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | ex: Enabled, Disabled, etc | `string` | `""` | no |
| <a name="input_patching"></a> [patching](#input\_patching) | ex: Enabled, Disabled, etc | `string` | `""` | no |
| <a name="input_project-name"></a> [project-name](#input\_project-name) | Name of the project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="tags"></a> [tags](#output\_tags) | "A map of all the tags." |

<!-- END_TF_DOCS -->
