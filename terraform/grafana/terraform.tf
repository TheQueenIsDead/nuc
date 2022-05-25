terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "1.23.0"
    }
  }
}

provider "grafana" {
  # Configuration options
  url  = "http://${local.subdomains.grafana}.${local.domain}/"
  auth = var.grafana_auth
}

