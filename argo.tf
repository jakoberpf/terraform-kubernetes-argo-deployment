resource "helm_release" "argo" {
  count      = var.deploy_argo ? 1 : 0
  name       = "argo"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo"
  version    = var.helm_chart_version_argo
  namespace  = var.namespace
  depends_on = [
    kubernetes_namespace.argo,
  ]
}
