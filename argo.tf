resource "helm_release" "argo" {
  count = var.argo_enabled ? 1 : 0

  name       = "argo"
  repository = var.argo_helm_repository
  chart      = var.argo_helm_chart_name
  version    = var.argo_helm_version
  namespace  = var.namespace

  depends_on = [
    kubernetes_namespace.argo,
  ]
}
