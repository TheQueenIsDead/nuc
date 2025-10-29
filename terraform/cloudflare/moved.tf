moved {
  from = module.cloudflare.cloudflare_zero_trust_tunnel_cloudflared_config.this
  to   = cloudflare_zero_trust_tunnel_cloudflared_config.this
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_policy.github
  to   = cloudflare_zero_trust_access_policy.github
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_policy.public
  to   = cloudflare_zero_trust_access_policy.public
}

# Access Applications
moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["apps"]
  to   = cloudflare_zero_trust_access_application.this["apps"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["budge"]
  to   = cloudflare_zero_trust_access_application.this["budge"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["chat"]
  to   = cloudflare_zero_trust_access_application.this["chat"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["jellyfin"]
  to   = cloudflare_zero_trust_access_application.this["jellyfin"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["jellyseer"]
  to   = cloudflare_zero_trust_access_application.this["jellyseer"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["memos"]
  to   = cloudflare_zero_trust_access_application.this["memos"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["photos"]
  to   = cloudflare_zero_trust_access_application.this["photos"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["prowlarr"]
  to   = cloudflare_zero_trust_access_application.this["prowlarr"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["qbittorrent"]
  to   = cloudflare_zero_trust_access_application.this["qbittorrent"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["radarr"]
  to   = cloudflare_zero_trust_access_application.this["radarr"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["recipes"]
  to   = cloudflare_zero_trust_access_application.this["recipes"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["requestrr"]
  to   = cloudflare_zero_trust_access_application.this["requestrr"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["sonarr"]
  to   = cloudflare_zero_trust_access_application.this["sonarr"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["speed"]
  to   = cloudflare_zero_trust_access_application.this["speed"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["tdarr"]
  to   = cloudflare_zero_trust_access_application.this["tdarr"]
}

moved {
  from = module.cloudflare.cloudflare_zero_trust_access_application.this["traefik"]
  to   = cloudflare_zero_trust_access_application.this["traefik"]
}

# DNS Records
moved {
  from = module.cloudflare.cloudflare_record.http_app["apps"]
  to   = cloudflare_record.http_app["apps"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["budge"]
  to   = cloudflare_record.http_app["budge"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["chat"]
  to   = cloudflare_record.http_app["chat"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["jellyfin"]
  to   = cloudflare_record.http_app["jellyfin"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["jellyseer"]
  to   = cloudflare_record.http_app["jellyseer"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["memos"]
  to   = cloudflare_record.http_app["memos"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["photos"]
  to   = cloudflare_record.http_app["photos"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["prowlarr"]
  to   = cloudflare_record.http_app["prowlarr"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["qbittorrent"]
  to   = cloudflare_record.http_app["qbittorrent"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["radarr"]
  to   = cloudflare_record.http_app["radarr"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["recipes"]
  to   = cloudflare_record.http_app["recipes"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["requestrr"]
  to   = cloudflare_record.http_app["requestrr"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["sonarr"]
  to   = cloudflare_record.http_app["sonarr"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["speed"]
  to   = cloudflare_record.http_app["speed"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["tdarr"]
  to   = cloudflare_record.http_app["tdarr"]
}

moved {
  from = module.cloudflare.cloudflare_record.http_app["traefik"]
  to   = cloudflare_record.http_app["traefik"]
}
