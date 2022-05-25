# Internal DNS records
# https://registry.terraform.io/providers/ryanwholey/pihole/latest/docs/resources/dns_record
resource "pihole_dns_record" "local_record" {
  for_each = local.local_subdomains
  domain = "${each.key}.${local.local_domain}"
  ip     = each.value
}
resource "pihole_dns_record" "local_record_www" {
  for_each = local.local_subdomains
  domain = "www.${each.key}.${local.local_domain}"
  ip     = each.value
}

#
## External SSH Tunnel node in GCP
#resource "google_service_account" "tunnel" {
#  account_id   = "service_account_id"
#  display_name = "Service Account"
#}
#
## https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
#
## Import Notes
##$ terraform import google_compute_instance.default projects/{{project}}/zones/{{zone}}/instances/{{name}}
##$ terraform import google_compute_instance.default {{project}}/{{zone}}/{{name}}
##$ terraform import google_compute_instance.default {{name}}
#resource "google_compute_instance" "tunnel" {
#  name         = "test"
#  machine_type = "e2-medium"
#  zone         = "us-central1-a"
#
#  tags = ["foo", "bar"]
#
#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-9"
#    }
#  }
#
#  // Local SSD disk
#  scratch_disk {
#    interface = "SCSI"
#  }
#
#  network_interface {
#    network = "default"
#
#    access_config {
#      // Ephemeral public IP
#    }
#  }
#
#  metadata = {
#    foo = "bar"
#  }
#
#  metadata_startup_script = "echo hi > /test.txt"
#
#  service_account {
#    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
#    email  = google_service_account.default.email
#    scopes = ["cloud-platform"]
#  }
#}
#
