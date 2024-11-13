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
import {
  to = module.cloudflare.cloudflare_zero_trust_tunnel_cloudflared_config.this
  id = "${var.cloudflare_account_id}/f560b8a9-8e4d-4292-8c91-2a4636c3c21c"
  # $ terraform import cloudflare_zero_trust_tunnel_cloudflared_config.example <account_id>/<tunnel_id>
}