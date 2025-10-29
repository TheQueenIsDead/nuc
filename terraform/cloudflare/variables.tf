variable "cloudflare_account_id" {
  type = string
}

variable "cloudflare_token" {
  type = string
  sensitive = true
}

variable "cloudflare_zone_name" {
  type = string
  default = "tqid.dev"
}

variable "cloudflare_access_allowed_emails" {
  type = set(string)
}

variable "subdomains" {
  type = set(object({
    name   = string
    public = optional(bool, false)
  }))
  default = [
    { name = "apps" },
    { name = "budge" },
    { name = "chat", public = true },
    { name = "grafana" },
    { name = "jellyfin", public = true },
    { name = "jellyseer" },
    { name = "memos" },
    { name = "photos", public = true },
    { name = "prometheus" },
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
}

variable "allowed_user_emails" {
  type = set(string)
}
