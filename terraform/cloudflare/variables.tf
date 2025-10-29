variable "subdomains" {
  type = set(object({
    name   = string
    public = optional(bool, false)
  }))
}

variable "zone_name" {
  type = string
}

variable "account_id" {
  type = string
}
