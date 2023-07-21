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
variable "helm_chart_version_argo" {
  type    = string
  default = "5.28.1"
}

variable "deploy_argo" {
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
