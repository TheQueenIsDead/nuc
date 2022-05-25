locals {
  ingress_ip       = "192.168.0.169"
  # All domains for the 'main' domain
  # Eg, "demo.pi.local"
  local_domain = "pi.local"
  local_subdomains = {
    "demo"         = local.ingress_ip
    "grafana"      = local.ingress_ip
    "home"         = local.ingress_ip
    "ingress"      = local.ingress_ip
    "jackett"      = local.ingress_ip
    "pihole"       = local.ingress_ip
    "prom"         = local.ingress_ip
    "prowlarr"     = local.ingress_ip
    "radarr"       = local.ingress_ip
    "sonarr"       = local.ingress_ip
    "speedtest"    = local.ingress_ip
    "transmission" = local.ingress_ip
  }
}