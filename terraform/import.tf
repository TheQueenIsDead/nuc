import {
  to = module.cloudflare.cloudflare_zero_trust_access_application.this["apps"]
  id = "${var.cloudflare_account_id}/6d7a3360-97e8-49bc-9921-34b73bdd6d8c"
}
import {
  to = module.cloudflare.cloudflare_zero_trust_access_application.this["budge"]
  id = "${var.cloudflare_account_id}/bc8923f5-8fcd-4164-93a0-ad3566dcc995"
}
import {
  to = module.cloudflare.cloudflare_zero_trust_access_application.this["grafana"]
  id = "${var.cloudflare_account_id}/684a2ae9-7385-4109-a965-56936569a032"
}
# import {
#   to = module.cloudflare.cloudflare_zero_trust_access_application.this["prometheus"]
#   id = "${var.cloudflare_account_id}/XXX"
# }
import {
  to = module.cloudflare.cloudflare_zero_trust_access_application.this["traefik"]
  id = "${var.cloudflare_account_id}/d4621624-2e46-4d60-af0e-76624ff085e2"
}
# import {
#   to = module.cloudflare.cloudflare_zero_trust_tunnel_cloudflared_config.this
#   id = "${var.cloudflare_account_id}/f560b8a9-8e4d-4292-8c91-2a4636c3c21c"
#   # $ terraform import cloudflare_zero_trust_tunnel_cloudflared_config.example <account_id>/<tunnel_id>
# }


import {
  to = module.cloudflare.cloudflare_record.http_app["apps"]
  id = "${var.cloudflare_account_id}/2ea30cb4248d1432d3c423d64ade47a7"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["budge"]
  id = "${var.cloudflare_account_id}/8526a6f91b78511d40abb34fc19039ee"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["grafana"]
  id = "${var.cloudflare_account_id}/e344a42613b8a10819c9eacbec5e9457"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["jellyfin"]
  id = "${var.cloudflare_account_id}/91bb85395cd180c36f037f19fa0011a8"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["prometheus"]
  id = "${var.cloudflare_account_id}/fe05d756b8e1ed4d1546b72666da98be"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["prowlarr"]
  id = "${var.cloudflare_account_id}/bc76cf0ffa21a1c246e54ddb0cb6dc0e"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["qbittorrent"]
  id = "${var.cloudflare_account_id}/51173ce1906589ed931013925d49887d"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["radarr"]
  id = "${var.cloudflare_account_id}/0b12400c456d94e440bd538d341a531d"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["requestrr"]
  id = "${var.cloudflare_account_id}/ab98a339691087705d4fe33d6a605619"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["sonarr"]
  id = "${var.cloudflare_account_id}/bdbcb6f03f7fddd6caa97ec6b8fc7b78"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["speed"]
  id = "${var.cloudflare_account_id}/04d9d86143eae79831fb707e92d83309"
}
import {
  to = module.cloudflare.cloudflare_record.http_app["traefik"]
  id = "${var.cloudflare_account_id}/67ee8bb31d7cd807840fd0da5f489998"
}









