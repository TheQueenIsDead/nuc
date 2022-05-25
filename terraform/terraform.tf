terraform {
  required_providers {
    pihole = {
      source  = "ryanwholey/pihole"
      version = "0.0.7"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.15.0"
    }
  }
}

provider "pihole" {
  # Configuration options
  url      = "http://${local.subdomains.pihole}.${local.domain}"
  password = var.pihole_password
}

provider "google" {
  # Configuration options
  region = "us-west1"
}