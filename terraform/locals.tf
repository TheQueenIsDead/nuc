locals {
  ingress_ip = "192.168.0.69"
  local_subdomains    = {
    "demo"      = local.ingress_ip
    "homer"     = local.ingress_ip
    "home"     = local.ingress_ip
    "ingress"   = local.ingress_ip
    "pihole"    = local.ingress_ip
    "speedtest" = local.ingress_ip
    "radarr"    = local.ingress_ip
    "sonarr"    = local.ingress_ip
  }
}