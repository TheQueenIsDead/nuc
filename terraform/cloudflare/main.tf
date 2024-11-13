data "cloudflare_zone" "this" {
  name = var.zone_name
}

data "cloudflare_zero_trust_access_identity_provider" "github" {
  account_id = var.account_id
  name = "GitHub"
}

resource "cloudflare_zero_trust_access_policy" "github" {
  account_id = var.account_id
  name       = "Allow TheQueenIsDead"
  decision   = "allow"

  include {
    email_list = var.allowed_user_emails
  }
}


resource "cloudflare_zero_trust_access_application" "this" {

  for_each = toset(var.subdomains)

  zone_id                   = data.cloudflare_zone.this.id
  name                      = each.key
  domain                    = "${each.key}.${data.cloudflare_zone.this.name}"
  type                      = "self_hosted"
  session_duration          = "24h"
  auto_redirect_to_identity = false
  allowed_idps = [
    data.cloudflare_zero_trust_access_identity_provider.github.id
  ]
  policies = [
    cloudflare_zero_trust_access_policy.github.id
  ]
}

data "cloudflare_zero_trust_tunnel_cloudflared" "nuc" {
  account_id = var.account_id
  name       = "nuc"
}


resource "cloudflare_zero_trust_tunnel_cloudflared_config" "this" {
  account_id = var.account_id
#   tunnel_id  = data.cloudflare_zero_trust_tunnel_cloudflared.nuc.id
  tunnel_id = "f560b8a9-8e4d-4292-8c91-2a4636c3c21c"
  config {
    origin_request {
      bastion_mode = false
      disable_chunked_encoding = false
      http2_origin = false
      keep_alive_connections = 0
      no_happy_eyeballs = false
      no_tls_verify = false
      proxy_port = 0
    }
    dynamic "ingress_rule" {
      for_each = var.subdomains
      content {
        hostname = "${ingress_rule.value}.${var.zone_name}"
        service = "http://traefik:80"
      }
    }
    ingress_rule {
      service = "http_status:404"
    }
  }
}