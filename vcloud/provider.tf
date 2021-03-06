provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  auth_type            = "integrated"
  org                  = var.vcd_org
  vdc                  = var.vcd_vdc
  url                  = var.vcd_url
  allow_unverified_ssl = var.allow_unverified_ssl
}

provider "onapp" {
  allow_unverified_ssl  = true
  email                 = var.onapp_email
  token                 = var.onapp_token
  url                   = module.vcloud.cp_ip
}
