terraform {
  cloud {
    organization = "TheQueenIsDead"
    hostname = "app.terraform.io"

    workspaces {
      project = "nuc"
      name = "nuc"
    }
  }
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}

provider "cloudflare" {
  # Configuration options
  api_token = var.cloudflare_token
}