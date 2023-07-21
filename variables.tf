# Global
variable "name" {
  type        = string
  description = "The name of the deployment."
  default     = "argo"
}

variable "namespace" {
  type    = string
  default = "kube-argo"
}

variable "compartment" {
  type        = string
  description = "The compartment the ressource is deployed with."
}

# Helm
variable "argo_helm_version" {
  type    = string
  default = "5.28.1"
}

variable "argo_helm_chart_name" {
  type    = string
  default = "argo-cd"
}

variable "argo_helm_repository" {
  type    = string
  default = "https://argoproj.github.io/argo-helm"
}

# Configuration
variable "argo_enabled" {
  type    = bool
  default = true
}

# Issuer - Cloudflare
variable "cloudflare_tokens" {
  type = map(object({
    name   = string
    host   = string
    domain = string
    token  = string
  }))
  description = "The API tokens for the cloudflare zones"
}
