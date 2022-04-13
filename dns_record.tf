resource "cloudflare_record" "beta" {
  zone_id = var.cloudflare_zone_id
  name    = "api.beta.online21"
  value   = local.beta_ip_address
  type    = "A"
  # value of 1 is 'automatic'
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "nightly" {
  zone_id = var.cloudflare_zone_id
  name    = "api.nightly.online21"
  value   = local.nightly_ip_address
  type    = "A"
  # value of 1 is 'automatic'
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "main" {
  zone_id = var.cloudflare_zone_id
  name    = "api.online21"
  value   = local.main_ip_address
  type    = "A"
  # value of 1 is 'automatic'
  ttl     = 1
  proxied = false
}
