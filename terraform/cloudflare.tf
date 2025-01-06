module "cloudflare" {
  source = "./cloudflare"
  subdomains = [
    { name = "apps" },
    { name = "budge" },
    { name = "grafana" },
    { name = "prometheus" },
    { name = "traefik" },
    { name = "prowlarr" },
    { name = "sonarr" },
    { name = "radarr" },
    { name = "qbittorrent" },
    { name = "jellyfin", public = true },
  ]
  zone_name           = "tqid.dev"
  account_id          = var.cloudflare_account_id
  allowed_user_emails = var.cloudflare_access_allowed_emails
}