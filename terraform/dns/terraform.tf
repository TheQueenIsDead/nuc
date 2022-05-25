terraform {
  required_providers {
    pihole = {
      source  = "ryanwholey/pihole"
      version = "0.0.7"
    }
  }
}

provider "pihole" {
  # Configuration options
  url      = "http://${local.subdomains.pihole}.${local.domain}"
  password = var.pihole_password
}
