module "cloudflare" {
  source = "./cloudflare"
  subdomains = [
    "apps",
    "budge",
    "grafana",
    "prometheus",
    "traefik",
  ]
  zone_name   = "tqid.dev"
  account_id = var.cloudflare_account_id
}