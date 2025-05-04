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

variable "allowed_user_emails" {
  type = set(string)
}
