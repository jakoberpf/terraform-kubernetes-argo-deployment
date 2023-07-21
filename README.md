<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.4.1 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.10.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.4.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.0.2 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.argo](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.argo](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [random_string.deployment_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_argo_enabled"></a> [argo\_enabled](#input\_argo\_enabled) | Configuration | `bool` | `true` | no |
| <a name="input_argo_helm_chart_name"></a> [argo\_helm\_chart\_name](#input\_argo\_helm\_chart\_name) | n/a | `string` | `"argo-cd"` | no |
| <a name="input_argo_helm_repository"></a> [argo\_helm\_repository](#input\_argo\_helm\_repository) | n/a | `string` | `"https://argoproj.github.io/argo-helm"` | no |
| <a name="input_argo_helm_version"></a> [argo\_helm\_version](#input\_argo\_helm\_version) | Helm | `string` | `"5.41.1"` | no |
| <a name="input_compartment"></a> [compartment](#input\_compartment) | The compartment the ressource is deployed with. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the deployment. | `string` | `"argo"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | n/a | `string` | `"kube-argo"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->