module "cloudflare" {
  source = "./cloudflare"
  subdomains = [
    "apps",
    "budge",
    "grafana",
    "prometheus",
    "traefik",
    "prowlarr",
    "sonarr",
    "radarr",
    "qbittorrent",
  ]
  zone_name           = "tqid.dev"
  account_id          = var.cloudflare_account_id
  allowed_user_emails = var.cloudflare_access_allowed_emails
}