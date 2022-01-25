# Internal DNS records
# https://registry.terraform.io/providers/ryanwholey/pihole/latest/docs/resources/dns_record
resource "pihole_dns_record" "local_record" {
  for_each = local.local_subdomains
  domain = "${each.key}.local"
  ip     = each.value
}

