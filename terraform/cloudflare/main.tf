data "cloudflare_zone" "this" {
  name = var.zone_name
}

resource "cloudflare_zero_trust_access_application" "this" {

  for_each = toset(var.subdomains)

  zone_id                   = data.cloudflare_zone.this.id
  name                      = each.key
  domain                    = "${each.key}.${data.cloudflare_zone.this.name}"
  type                      = "self_hosted"
  session_duration          = "24h"
  auto_redirect_to_identity = false
  policies = [
    #     cloudflare_zero_trust_access_policy.example_1.id,
    #     cloudflare_zero_trust_access_policy.example_2.id
  ]
}

data "cloudflare_zero_trust_tunnel_cloudflared" "nuc" {
  account_id = var.account_id
  name       = "nuc"
}

resource "cloudflare_zero_trust_tunnel_cloudflared_config" "this" {
  account_id = var.account_id
  tunnel_id  = data.cloudflare_zero_trust_tunnel_cloudflared.nuc.id
  config {
    warp_routing {
      enabled = true
    }
    origin_request {
      connect_timeout          = "1m0s"
      tls_timeout              = "1m0s"
      tcp_keep_alive           = "1m0s"
      no_happy_eyeballs        = false
      keep_alive_connections   = 1024
      keep_alive_timeout       = "1m0s"
      http_host_header         = "baz"
      origin_server_name       = "foobar"
      ca_pool                  = "/path/to/unsigned/ca/pool"
      no_tls_verify            = false
      disable_chunked_encoding = false
      bastion_mode             = false
      proxy_address            = "10.0.0.1"
      proxy_port               = "8123"
      proxy_type               = "socks"
      ip_rules {
        prefix = "/web"
        ports  = [80, 443]
        allow  = false
      }
    }
    ingress_rule {
      hostname = "foo"
      path     = "/bar"
      service  = "http://10.0.0.2:8080"
      origin_request {
        connect_timeout = "2m0s"
        access {
          required  = true
          team_name = "terraform"
          aud_tag   = ["AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"]
        }
      }
    }
    ingress_rule {
      service = "https://10.0.0.3:8081"
    }
  }

}