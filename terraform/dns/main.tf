# Internal DNS records
# https://registry.terraform.io/providers/ryanwholey/pihole/latest/docs/resources/dns_record
resource "pihole_dns_record" "local_record" {
  for_each = local.subdomains
  domain = "${each.value}.${local.domain}"
  ip     = local.ingress_ip
}
resource "pihole_dns_record" "local_record_www" {
  for_each = local.subdomains
  domain = "www.${each.value}.${local.domain}"
  ip     = local.ingress_ip
}
