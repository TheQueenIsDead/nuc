module "cloudflare" {
  source = "./cloudflare"
  subdomains = [
    { name = "apps" },
    { name = "budge" },
    { name = "chat", public = true },
    { name = "jellyfin", public = true },
    { name = "jellyseer" },
    { name = "memos" },
    { name = "photos", public = true },
    { name = "prowlarr" },
    { name = "qbittorrent" },
    { name = "radarr" },
    { name = "recipes"},
    { name = "requestrr"},
    { name = "sonarr" },
    { name = "speed", public = true },
    { name = "tdarr" },
    { name = "traefik" },
  ]
  zone_name           = "tqid.dev"
  account_id          = var.cloudflare_account_id
  allowed_user_emails = var.cloudflare_access_allowed_emails
}