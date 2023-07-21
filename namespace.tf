resource "kubernetes_namespace" "argo" {
  metadata {
    annotations = {
      name = var.namespace
    }
    labels = {
      managed-by = var.compartment
    }
    name = var.namespace
  }
}
