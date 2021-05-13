provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  auth_type            = "integrated"
  org                  = var.vcd_org
  vdc                  = var.vdc_vdc
  url                  = var.vdc_url
  allow_unverified_ssl = var.allow_unverified_ssl
}
