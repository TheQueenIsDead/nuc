variable "subdomains" {
  type = set(string)
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
