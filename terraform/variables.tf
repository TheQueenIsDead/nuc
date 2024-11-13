variable "cloudflare_token" {
  type = string
}

variable "cloudflare_account_id" {
  type = string
}

variable "cloudflare_access_allowed_emails" {
  type = set(string)
}