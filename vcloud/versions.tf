terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
    }
    onapp = {
      source = "onapp/onapp"
    }
  }
  required_version = ">= 0.13"
}
