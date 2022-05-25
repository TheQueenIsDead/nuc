locals {
  # Import config from the top level config.json
  import = jsondecode(file("${path.module}/../config.json"))
  # Unwrap the top level of config.json
  config = local.import.config

  # Further parse the config values such that if keys are updated then resources
  # do not need to change.
  domain = local.config.domain
  subdomains = local.config.subdomains
  ingress_ip = local.config.ingress_ip
}
